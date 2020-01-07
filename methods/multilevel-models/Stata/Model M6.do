use schools.dta, clear

summ score, detail
gen median=r(p50)

gen score_discrete=score>=median

xtmelogit score_discrete female || schoolid: female, ml variance covariance(unstructured)
