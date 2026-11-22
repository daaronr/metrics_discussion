"""Post the Nov 2026 review's comment items to Hypothes.is as daaronr.

Usage:
  python3 -I post_hypothesis.py --dry            # check anchors, post nothing
  python3 -I post_hypothesis.py --test           # post the first anchorable item only
  python3 -I post_hypothesis.py --all            # post every remaining anchorable item
  python3 -I post_hypothesis.py --delete-all     # delete every annotation in the log

Reads the token from ../.env (hypothesis_daaronr_PAT=...). Every created
annotation id is appended to hypothesis_log.jsonl next to this script, and
items already in the log are skipped, so re-running is safe.
"""
import json, os, re, sys, html, time, urllib.request, urllib.error

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(HERE)
ITEMS = os.path.join(HERE, "hypothesis_items.json")
LOG = os.path.join(HERE, "hypothesis_log.jsonl")
API = "https://api.hypothes.is/api"
HEADER = ("Claude: AI-drafted suggestion from a review of these notes (Nov 2026), "
          "posted from David's account. Not yet checked by David.")


def token():
    for line in open(os.path.join(REPO, ".env"), encoding="utf-8"):
        if line.startswith("hypothesis_daaronr_PAT="):
            return line.split("=", 1)[1].strip().strip('"').strip("'")
    sys.exit("hypothesis_daaronr_PAT not found in .env")


def page_text(page):
    s = open(os.path.join(REPO, "docs", page), encoding="utf-8").read()
    s = s[s.find("</nav>"):] if "</nav>" in s else s
    s = re.sub(r"<script.*?</script>|<style.*?</style>|<!--.*?-->", " ", s, flags=re.S)
    s = re.sub(r"<[^>]+>", " ", s)
    return re.sub(r"\s+", " ", html.unescape(s))


def norm(t):
    return re.sub(r"\s+", " ", t).strip()


BASE = "https://daaronr.github.io/metrics_discussion/"
# pages whose content moved in the Nov 2026 cleanup
MOVED = {"other-approaches-techniques-and-applications.html": "introduction.html"}


def reanchor(exact, text, min_ratio=0.85):
    """Find the passage the fixes slightly edited; return a selector built from the page's current text."""
    import difflib
    ex = norm(exact)
    n = len(ex)
    if n < 15:
        return None
    best, best_i = 0.0, -1
    step = max(1, n // 8)
    for i in range(0, max(1, len(text) - n), step):
        r = difflib.SequenceMatcher(None, ex, text[i:i + n], autojunk=False).quick_ratio()
        if r > best:
            best, best_i = r, i
    if best < min_ratio:
        return None
    # refine around the best coarse hit
    lo, hi = max(0, best_i - step), min(len(text), best_i + step)
    best, span = 0.0, None
    for i in range(lo, hi):
        for L in (n - n // 10, n, n + n // 10):
            r = difflib.SequenceMatcher(None, ex, text[i:i + L], autojunk=False).ratio()
            if r > best:
                best, span = r, (i, i + L)
    if best < min_ratio or not span:
        return None
    i, j = span
    return {"exact": text[i:j].strip(), "prefix": text[max(0, i - 32):i], "suffix": text[j:j + 32]}


def call(method, path, tok, body=None):
    req = urllib.request.Request(API + path, method=method,
                                 data=json.dumps(body).encode() if body is not None else None,
                                 headers={"Authorization": "Bearer " + tok,
                                          "Content-Type": "application/json",
                                          "Accept": "application/vnd.hypothesis.v1+json"})
    with urllib.request.urlopen(req, timeout=30) as r:
        return json.loads(r.read() or b"{}")


def logged():
    if not os.path.exists(LOG):
        return {}
    out = {}
    for line in open(LOG, encoding="utf-8"):
        rec = json.loads(line)
        if rec.get("deleted"):
            out.pop(rec["item"], None)
        else:
            out[rec["item"]] = rec
    return out


def body_for(x):
    sel = x["hypothesis_selector"]
    text = f"{HEADER}\n\n**Issue ({x['id']}):** {x['issue']}\n\n**Suggestion:** {x['suggestion']}"
    return {
        "uri": x["page_url"],
        "group": "__world__",
        "tags": ["claude-review"],
        "permissions": {"read": ["group:__world__"]},
        "text": text,
        "target": [{"source": x["page_url"], "selector": [
            {"type": "TextQuoteSelector", "exact": sel["exact"],
             "prefix": sel.get("prefix", ""), "suffix": sel.get("suffix", "")}]}],
    }


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else "--dry"
    items = json.load(open(ITEMS, encoding="utf-8"))
    done = logged()
    if mode == "--delete-all":
        tok = token()
        for item, rec in done.items():
            call("DELETE", "/annotations/" + rec["id"], tok)
            with open(LOG, "a", encoding="utf-8") as f:
                f.write(json.dumps({"item": item, "id": rec["id"], "deleted": True}) + "\n")
            print("deleted", item, rec["id"])
        return
    texts, ok, skip = {}, [], []
    for x in items:
        if not x.get("on_live_page") or not x.get("hypothesis_selector"):
            skip.append((x["id"], "not on live page")); continue
        if x["page"] in MOVED:
            x["page"] = MOVED[x["page"]]
            x["page_url"] = BASE + x["page"]
        t = texts.setdefault(x["page"], page_text(x["page"]))
        if norm(x["hypothesis_selector"]["exact"]) not in t:
            new = reanchor(x["hypothesis_selector"]["exact"], t)
            if not new:
                skip.append((x["id"], "anchor text no longer on page")); continue
            x["hypothesis_selector"] = new
            print(f"  re-anchored {x['id']}: {new['exact'][:70]!r}")
        ok.append(x)
    todo = [x for x in ok if x["id"] not in done]
    print(f"items {len(items)}; anchorable {len(ok)}; already posted {len(ok) - len(todo)}; to post {len(todo)}; skipped {len(skip)}")
    for i, why in skip:
        print("  skip", i, "-", why)
    if mode == "--dry":
        return
    tok = token()
    if mode == "--test":
        todo = todo[:1]
    for x in todo:
        try:
            r = call("POST", "/annotations", tok, body_for(x))
        except urllib.error.HTTPError as e:
            print("FAILED", x["id"], e.code, e.read()[:300]); break
        rec = {"item": x["id"], "id": r["id"], "uri": x["page_url"],
               "html": r.get("links", {}).get("incontext") or r.get("links", {}).get("html")}
        with open(LOG, "a", encoding="utf-8") as f:
            f.write(json.dumps(rec) + "\n")
        print("posted", x["id"], r["id"], rec["html"])
        time.sleep(1)


if __name__ == "__main__":
    main()
