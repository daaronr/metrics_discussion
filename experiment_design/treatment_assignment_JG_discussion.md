Treatment assignment
--------------------

Our principal "Main Hypotheses 1" is to estimate each of the three Average Treatment Effects on total subsequent donations, for SEED-H and SEED-L relative to the control (no seed) and relative to each other.[^1]

We have several constraints: our funding (a total of £5000, perhaps up to 10k), our time (we need to implement this over a period of at most 4 weeks), and the number of pages we expect to arise. Given this will assign our treatments (both the *share* *of treatments/controls* and the "stratification" to minimize the expected mean squared error (MSE) of the aforementioned estimates, weighting each of the three equally. *(Is this equivalent to maximising the power to detect an effect of a given
size?)*.

Our treatment assignment is influenced by Kasy (2016) and Barrios
(2014?).

There are two important differences between our environment and those
discussed in these papers.

1.  In the previous papers, all baseline characteristics of the sample
    are known in advance of the assignment process. In our case, we will
    only observe these as new pages are generated over time. As each
    page arises (and its initial characteristics are observed), we must
    decide which treatment or control to assign. (However, we have a
    substantial history of previous pages which we may use to infer the
    likely distribution of future pages).

2.  The previous papers considered identically and independently
    distributed potential outcomes, without clustering or bunching. In
    contrast, our experiment will be implemented over a period of weeks
    or months. Outcomes may be correlated during particular time
    periods, because of common unobservable variables.[^2]

[Kasy's setup: ]{.underline}

1\. Sample observations $i$ from the population\... collect baseline
covariates $X_{i}$.

2\. Using \... X and \[possible randomization\] \... allocate units i to
treatments $D_{i}$.

3\. \[Post-experiment\] collect \... outcomes $Y_{i}$ \... \[use\] to
calculate estimators $\hat{{\beta}}$ of the \... $\beta$ that we are
interested in \[esp ATE\].

4\. \... Loss , $L(\hat{\beta},\beta)$ \... commonly
$(\hat{\beta}-\beta)^{2}$.

[Our setup, written in Kasy's terminology]{.underline}

0.1. Observe outcomes $Y_{it}$ (e.g., total amount raised) for a
"history" of pages , where $t$ indexes the order of start date/time of
the page, $t<0$. Observe baseline (pre-hypothetical-treatment)
covariates $X_{it}$ including exact date/time of page foundation $\tau$.
Observe "pseudo-treatment" variables$\tilde{D_{it}}$(e.g., early
donations before hypothetical treatment time).

0.2. Observe or estimate parameters (e.g., $\hat{V}(\beta|X)$ based on
non-experimental data (our own analysis, Smith et-al)

1\. Define rule for assigning treatments and controls using the above,
as a function of time and baseline covariates. (Should this rule
dynamically adjust to outcome variation?)

2\. After officially starting experiment ($t=0$), treatable pages arise
at some rate $\rho(\tau)$, revealing baseline covariates $X_{it}$
including exact date/time of page foundation $\tau$.

3\. As each page arises, assign it to the treatment(s)/control as a
function of baseline covariates (and a possible randomisation device,
and possibly previously collected measures: outcome variance by
treatment, etc). Implement this treatment.

4\. Continue experiment until pre-specified stopping rule (see below).
Collect $j$ outcome measures $Y_{ij}$ for each page.

5\. Calculate estimators$\hat{{\beta}}$ of the \... $\beta$ that we are
interested in (*which estimators?*)

6\. Loss , $L(\hat{\beta},\beta)$ \... defined as
$(\hat{\beta}-\beta)^{2}$ (this cannot be computed from realized data,
of course')

### Proposed randomization procedure I (a Barrios spin-off)

*(If we adopt this procedure)* We will estimate a *predictive* (ridge
regression) model of the total amount raised based on pre-experiment
"historical" data, fitted on variables ("baseline covariates") that can
be observed at the time the page is created and started and before it is
potentially treated.

For each new page we will use this model to predict the expected total
revenue, categorizing the page by "quantile of the distribution of
similar previous pages" (again from pre-experiment data, but perhaps
adjusting as pages come in?). Within each predicted quantile, we will
essentially alternate between treatment and control (select from an urn
with two balls without replacement). The initial treatment for all bins
will be chosen randomly, according to a pre-registered public
randomisation device.

We will choose the size of the aforementioned quantiles (e.g., quartiles
or deciles) to trade off between efficiency with respect to balancing
the size of predicted donation between treatment and control, and to
achieve a balance between treatment and control within small time
intervals. We can calibrate this using our "historical" data. using
Monte-carlo simulations to determine which procedures consistently
yields the lowest mean-squared error. (In doing this we might want to
separate a fitting and a testing sample to avoid overfitting? [^3]

In doing the above we should also consider that the share of pages in
each "expected revenue" quantile as predicted from *previous data* will
not be equal, as the baseline variables will change over time; we should
consider trends, and seasonality, and unobservable time-specific shocks
to this.

### Proposed randomization procedure II (Max Kasy to propose, presumably with a Bayesian framework )

**Pre-determined variables**

Sample size and stopping rule
-----------------------------

Following Sagarin's "p\_crit" approach,[^4] we *could* continue to collect
in batches, with prespecified stopping rules, stopping either when

1.  We find a treatment-control differential that is statistically
    significant above some nominal p-value "p\_crit"

2.  For "futility", after the p-value exceeds some value.

The precise value of p\_crit can be calibrated so that the procedure
above yields less than an (e.g.) 5% rate of false-positive.

However, I would like to adapt this to more useful stopping "targets"
involving achieving reasonable confidence intervals.

We want to run the experiment until we have sufficient statistical power
both to assess the Smith et al results and to provide evidence on
whether giving on social fundraising pages is an effective strategy for
those in the EA movement. We aim to continue collecting data until we
attain *both* of the below:

-   Considering Smith et al's result that an increase in the mean
    contribution by one unit increase subsequent contributions by 1/4 of
    a unit\... For the impact on *donations while this donation is
    visible on the page*, we will collect data until the 95% CI of our
    estimate (of the impact of a change in the mean contribution on a
    later contribution) either does *not* include 0.25, or it includes
    0.25 and has less than a width below 0.25 (i.e., within \[0.125,
    0.375\]).

-   Considering our 'EA policy' implications\... For the *total
    subsequent donation* we aim to gather enough data so that the 95%
    confidence interval on the impact of our treatment allows either

    -   If the effect appears null or negative, to rule out a (positive)
        effect greater than 15% of the size of our average (large) seed
        contribution

    -   to find a significant positive effect that is bounded within 50%
        of the size of our average (large) seed

Before the main experiment, we will re-evaluate this and re-report our
proposed sample size/stopping rule, as well as reporting our ex-ante
power estimates.

[Details]{.underline}

We have committed £5000 of our own funds for this purpose.

Note that we have collected Historical Data since we created our R
plugin close to the start of year-2018. Our analysis of this data
suggests that the average "early" donations in this category were around
£20, implying that our average "Large" seed size will be around £40.
(And the "small" seed size will typically be £10). This would imply our
funds will yield an expected sample size of \[see "scoping" work. (We
aimed at 150 treatment pages and 150 control pages from a previous
calculation.)

However, after these funds are exhausted, if we still have not attained
the power we seek, we will look for additional funding sources. It is
not reasonable for us as researchers to specify a stopping rule based on
cost realistically, the project will always continue as long as funds
can be raised (and it would be difficult to verify that one 'would have
stopped).

\...

[Max]{.underline}

"greedy algorithm"

Bayesian: posterior variance

Stopping with a narrow CI with the CI based on the *prior* estimation

Thompson sampling

[^1]: We also aim to estimate effects on individual subsequent donations
    and other measures, as discussed in our pre-registration.

[^2]: E.g., a news event may spur the creation of a particular series of
    fundraising likely to attract particularly high/low donations.

[^3]: I suspect that a succession of treatments or controls in the same
    time period may make our estimates vulnerable to unobservable
    time-specific shocks; as this would be hard to diagnose using
    standard techniques and simulations without a very long history.
    Intuitively, we would like an approximate balance of control and
    treatment observations within each 4 hours. However, let us explore
    whether we can find a more systematic approach.

[^4]: DR: This approach seems fairly intuitive and feasible/realistic.
    The idea that (e.g.,) "we will collect in batches of 150, and we
    will not stop until we attain p\>p\_crit or (for futility) whenever
    p\>.5 seems like something that could be a credible commitment, if
    preregistered. At the point of submitting the paper with this plan
    preregistered, one could check whether they indeed did collect data
    in these batches (assuming they can't hide data) and could check
    whether they followed this plan.
