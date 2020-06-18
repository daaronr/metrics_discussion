# Mediators: an applied review {#mediators}

## Initial thoughts for Parey et al (NL education paper)


Suppose we observe treatment $T$ (e.g., 'allowed to enter first-choice institution and course'), intermediate outcome $M$ (e.g., completion of degree in first-choice course and institution), and final outcome $Y$ (e.g., lifetime income.)\

Treatment $T$ directly affects final outcome $Y$
$$\ensuremath{T\rightarrow Y}$$

$T$ also affects intermediate outcome $M$.

$$T\rightarrow M$$ Intermediate outcome also affects final outcome $Y$.
$$M\ensuremath{\rightarrow}Y$$

With exogenous variation in $T$ and $M$ (or identified instruments for
each of these), we should be able to estimate each of these three
relationships as functions.

With homogeneous (and in a simplest case linear) effects and separate we
can use the functions estimated above to compute the total (direct plus
indirect) effect of $T$ on $Y$. We could also compute the share of this
effect that occurs *via* the intermediate effect, i.e.,
$T\text{\ensuremath{\rightarrow} }M\text{\ensuremath{\rightarrow} }Y$.
This should be merely the composition of these two functions, or, in the
linear case, the product of the slope coefficients.

However, there are two major challenges to this estimation.

1.  We (may) have a valid instrument for (exogenous variation in) $T$
    only, and $M$ may arise through a process involving selection on
    unobserved variables.

2.  Each of the three above relationships (as well as the selection
    equation) may involve heterogeneous functions; i.e., differential
    treatment effects.

Econometric Mediation Analyses (Heckman and Pinto)
==================================================

**Econometric Mediation Analyses: Identifying the Sources of Treatment
Effects from Experimentally Estimated Production Technologies with
Unmeasured and Mismeasured Inputs**

Relevance to Parey et al {#relevance-to-parey-et-al .unnumbered}
------------------------

We have an instrument for admission to one's first-choice institution
(and course). Our result show an impact of this admission on future
income, for at least some groups. However, this effect could come
through any of a number of channels. We observe some of these
'intermediate outcomes', including course enrollment, course completion,
medical specialization, and location of residence, but we do not have
specific instruments for each of these (a lot of work might yield an
instrument for specialization; I hear there is a lottery).

Summary and key modeling
------------------------

There is a 'production function' (cf income as a function of human
capital, opportunities, etc). Treatments (e.g., RCTs) may affect
outcomes through the following channels:

1.  observable or proxied inputs (cf degree obtained, specialization
    entered, years of study, moving away from parents, location of
    residence as proxy for job opportunities)

2.  unobservable/unmeasured inputs (cf human capital, social
    connections\...)

3.  the production function itself, the 'map between inputs and outputs
    for treatment group members' (cf does the institution itself
    directly shift the income?, does it change the impact of entering a
    specialization, does human capital 'matter more' at some
    institutions?)

If treatments affect unmeasured inputs in a way not statistically
independent of measured inputs, this biases estimates of the effect of
measured inputs. "RCTs unaided by additional assumptions do not allow
the analyst to identify the causal effect of increases in measured
inputs on outputs \... \[nor distinguish effects from changes in
production functions\]."

Here " we can test some of the strong assumptions implicitly invoked".

"Direct effects" as commonly stated refer to the impact of both channels
2 and 3 above. \[DR: Channel 2 isn't really a direct effect imho\]\
**Standard potential outcomes framework:**

$$Y=DY_{1}+(1-D)Y_{0}$$

$$ATE=E(Y_{1}-Y_{0})$$

**Production function
$$Y_{d}=f_{d}(\mathbf{\mathbf{{\theta}}}_{d}^{p},\mathbf{\mathbf{{\theta}}}_{d}^{u},\mathbf{{X}}),d\in\left\{ 0,1\right\}$$**

\... the function under treatment $d$; of proxied and unobserved inputs
that occur under state $d$, and baseline variables.\
The production function implies:

$$ATE=E\Big(f_{1}(\mathbf{\mathbf{{\theta}}}_{1}^{p},\mathbf{\mathbf{{\theta}}}_{1}^{u},\mathbf{{X}})-f_{0}(\mathbf{\mathbf{{\theta}}}_{0}^{p},\mathbf{\mathbf{{\theta}}}_{0}^{u},\mathbf{{X}})$$\
We also consider counterfactual outputs, fixing treatment status and
proxied inputs:
$$Y_{d,\bar{\theta_{d}}^{p}}=f_{d}(\mathbf{\mathbf{{\bar{{\theta}}}}}_{d}^{p},\mathbf{\mathbf{{\theta}}}_{d}^{u},\mathbf{{X}}),d\in\left\{ 0,1\right\}$$\
This allows us to decompose ('as in the mediation literature'*):*

*ATE(d)=IE(d)+DE(d)*

-   *IE, Indirect* *effect*: allows only the proxied inputs to vary with
    the treatment (holds the rest fixed at one of the two treatment
    statuses)

-   *DE, Direct* *effect*: allows technology and the distribution of
    unobservables to vary with the treatment (holds proxied inputs fixed
    at one of the two treatment statuses)\

HP further decompose the direct effect into:

-   $DE'(d,d')$: The impact of letting the treatment vary the map only
    (fixing the rest at one of the two appropriate values)

-   $DE''(d,d')$: The impact of letting the treatment vary the
    unmeasured inputs only (fixing the rest at one of the two
    appropriate values)

They use this to give two further ways of decomposing the ATE.\
**Common assumptions**\
"The [standard literature]{.underline} on mediation analysis in
psychology regresses outputs on mediator inputs" \... often adopts the
strongs assumption of:

1.  no variation in unmeasured inputs conditional on the treatment
    (implying the effects of these are summarized by a treatment dummy)
    and[^1]

2.  full invariance of the production function: $f_{1}=f_{0}$.

\... which implies $Y_{d}=f(\mathbf{\theta}_{d}^{p},d,\mathbf{X})$.\
[Sequential ignorability (Imai et al, 10, '11)]{.underline}:
Essentially, independent randomization of both treatment status and
measured inputs.[^2]\
*This sentence is hard to follow:*

"In other words, input $\theta_{d'}^{p}$ is statistically independent of
potential outputs when treatment is fixed at $D=d$ and measured inputs
are fixed at $\bar{\theta_{d'}^{p}}$ conditional on treatment assignment
$D$ and same preprogram characteristics $X$."

This assumption yields the 'mediation formulas':

$$\begin{aligned}
E(IE(d)|X)= & \int E(Y|\theta^{p}=t,D=d,X)\underbrace{\Big(dF_{(\theta^{p}|D=1,X)}(t)-dF_{(\theta^{p}|D=1,X)}(t)\Big)}_{{\text{Difference in distribution of proxy inputs}}} & (9)\\
E(DE(d)|X)= & \int\underbrace{\Big(E(Y|\theta^{p}=t,D=1,X)-E(Y|\theta^{p}=t,D=0,X)\Big)}_{\text{Dfc in expectations (unobservables, function) between treatments given proxy inputs }}expe\underbrace{{dF_{(\theta^{p}|D=1,X)}(t)}}_{\text{Distn proxy inputs for D=1}} & (10)\end{aligned}$$

*(??F is presumably the distribution over the observables; where did the
unobservables go? They are in the expectations, I guess.)*\
[Difference from RCT]{.underline}

*What RCT doesn't do:*

> \[sequential ignorability\] translates into \... [no confounding
> effects]{.underline} on both treatments and measured inputs \... does
> not follow from a randomized assignment of treatment \...\[which\]
> ensures independence between treatment status and counterfactual
> inputs/outputs \... \[but *not*\] between proxied inputs
> $\theta_{d}^{p}$ and unmeasured inputs $\theta_{d}^{u}$. \[Thus *not*
> between counterfactual outputs and measured inputs is assumed in
> condition (ii).\]

Cf, randomizing 'win first-choice institution' does not guarantee that
the choice (potential choice under winning/losing institution) to enter
a particular specialty is independent of (potential after winning/losing
institution) unobserved human capital gains at an institution. The
(potential) choiceof specialty is alsonot guaranteed choice independent
of potential incomes (holding proxy inputs like specialty constant) if
winning/losing institution.

*What RCT* *[does]{.underline}* *do:*

RCT ensures "independence between treatment status and counterfactual
inputs/outputs", thus identifying 'treatment effects for proxied inputs
and for outputs.

CF, we can identify the impact of the treatment 'win first chosen
institution' on proxied input like 'enters a specialization' and on
outputs like 'income in observed years.'

Pinto (2015), Selection Bias in a Controlled Experiment: The Case of Moving to Opportunity
==========================================================================================

Summary {#summary .unnumbered}
-------

-   \... 4000+ families targeted, incentive to relocate from projects to
    better neighbourhoods.

-   Easy to identify impact of vouchers

-   Challenge (here) is to assess impact of *neighborhoods* on outcomes.

-   Method here to decompose the TEOT into unambiguously interpreted
    effects. Method applicable to 'unordered choice models with
    categorical instrumental variables and multiple treatments'

-   Finds significant causal effect on labour market outcomes

Relevance to Parey et al {#relevance-to-parey-et-al-1 .unnumbered}
------------------------

1.  We also have an instrument (DUO lottery numbers) cleanly identifying
    the effect of the 'opportunity to do something' (in our case, to
    enter the course at your preferred institution). However, we also
    want to measure the impact of choices 'encouraged' by the
    instrument, such as (i) attending the first choice course and
    institution and (ii) completing this course. We also deal with
    unordered choices (i. enter course and institution, enter course at
    other institution, enter other course at institution, enter neither)
    (ii. choice of medical specialisation)

2.  The geographic outcome is relevant to our second paper (impact on
    'lives close to home')

Introduction  {#introduction .unnumbered}
------------

The causal link between neighborhood characteristics and resident's
outcomes has seldom been assessed.

**Treatments:**

-   Control (no voucher)

-   Experimental: could use voucher to lease in low-poverty neighborhood

-   Section 8: Could use voucher in any () neighborhood

*Many papers evaluate the ITT or TOT effects of MTO.*

-   ITT: effect of being *offered* voucher

    -   estimated as difference in average outcome of experimental vs
        control families

-   TOT: effect for 'voucher compliers' (assuming no effect of simply
    being *offered* voucher on those who don't use it)

    -   estimated as ITT/compliance rate

> \[ITT and TOT\] are the most useful parameters to investigate the
> effects of *offering* \[EA\] rent subsidising vouchers to families.

Identification strategy brief {#identification-strategy-brief .unnumbered}
-----------------------------

-   Vouchers as IVs for choice among 3 neighborhood alternatives (no
    relocation, relocate bad, relocate good) *\[Cf: enter course and
    fp-institution, enter course at other institution, do not enter
    course\]*

-   Neighborhood causal effects as difference in counterfactual outcomes
    among 3 categories

-   Challenge: "MTO vouchers are insufficient to identify the expected
    outcomes for all possible counterfactual relocation decisions"

    -   \... "compliance with the terms of the program was highly
        selective \[Clampet-Lundquist and M, 08\]"

-   Solution: Uses theory and 'tools of causal inference. Invokes SARP
    to identify 'set of counterfactual relocation choices that are
    economically justifiable'

-   [Identifying assumption]{.underline}: "the overall quality of the
    neighborhood is not directly caused by the unobserved family
    variables even though neighborhood quality correlates with these
    unobserved family variables due to network sorting"

-   'Partition sample \... into unobserved subsets associated with
    economically justified counterfactual relocation choices and
    estimate the causal effect of neighborhood relocation conditioned on
    these partition sets.' \[*what does this mean?\]*

Results in brief {#results-in-brief .unnumbered}
----------------

"Relocating from housing projects to low poverty neighborhoods generates
statistically significant results on labor market outcomes \... 65%
higher than the TOT effect for adult earnings."

Framework: first for binary/binary (simplification) {#framework-first-for-binarybinary-simplification .unnumbered}
---------------------------------------------------

**First, for binary outcomes (simplified)**

$Z_{\omega}$: whether family $\omega$ receives a voucher *(cf
institution-winning lottery number)*

$T_{\omega}$: whether family $\omega$ relocates (*cf enters first choice
institution and course)*\

**Counterfactuals**

-   $T_{\omega}(z)$: relocation decision $\omega$ would choose if it had
    been assigned voucher $z\in{0,1}$': vector of potential relocation
    decisions (*cf education choices)* for each voucher assignment (*cf
    lottery number)*

    -   Can partition into never-takers, compliers, always takers, and
        defiers

-   $(Y_{\omega}(0);Y_{\omega}(1$)): (Potential counterfactual) outcomes
    (*cf income, residence, etc*) when relocation decision is fixed at 0
    and 1, respectively

**Key ( standard) identification assumption: instrument independent of
counterfactual variables**

$$(Y_{\omega}(0),Y_{\omega}(1),T_{\omega}(0),T_{\omega}(1))\perp Z_{\omega}$$

**Standard result 1: ITT**

$$\begin{aligned}
ITT=E(Y_{\omega}|Z_{\omega}=1)-(Y_{\omega}|Z_{\omega}=0)\\
=E(Y_{\omega}(1)-Y_{\omega}(0)|S_{\omega}=[0,1]')P(S_{\omega}=[0,1])+E(Y_{\omega}(1)-Y_{\omega}(0)|S_{\omega}=[1,0]')P(S_{\omega}=[0,1])\end{aligned}$$

i.e., ITT computation yields the sum of the 'causal effect for
compliers' and the 'causal effect for defiers, weighted by the
probability of each.

**Standard result 2: LATE**

$$\begin{aligned}
LATE=\frac{{ITT}}{P(T_{\omega}=1|Z_{\omega}=1)-P(T_{\omega}=1|Z_{\omega}=0)}= &  & E(Y_{\omega}(1)-Y_{\omega}(0)|S_{\omega}=[0,1]')\\
if\:P(S_{\omega}=[0,1])=0\end{aligned}$$

i.e., the LATE, computed as the ITT divided by the 'first stage' impact
of the instrument, is the causal effect for compliers if there are no
defiers.

Framework for MTO multiple treatment groups, multiple choices {#framework-for-mto-multiple-treatment-groups-multiple-choices .unnumbered}
-------------------------------------------------------------

-   $Z_{\omega}\in\{z_{1,}z_{2,}z_{3}\}$ for no voucher, experimental
    voucher, and section 8 voucher, respectively

-   $T_{\omega}\in\{1,2,3\}$ \... no relocation, low poverty
    neighborhood relocation, high poverty relocation

-   $T_{\omega}(z)$: relocation decision for family $\omega$ if assigned
    voucher $z$

$\ensuremath{\rightarrow}$Response type for each family $\omega$ is that
a three-dimensional vector:
$S_{\omega}=[T_{\omega}(z_{1}),T_{\omega}(z_{2}),T_{\omega}(z_{3})]$.\
$\ensuremath{\rightarrow}$ **ITT** computation now measures a weighted
sum of effects across a subset of those response types whose responses
vary between the assignments being compared.\
\
*Cf:*

-   Considering the 'treatments': '1: enter other course at fp-inst, '2:
    enter course at fp-inst', '3: enter course at non-fp inst'

    -   (I ignore other course at other institution for now)

-   Looking among those who won the course lottery (so we have a binary
    instrument: wininst $Z_{\omega}\in{0,1\}}$

-   Our reduced-form estimates (regressions on the 'lottery number wins
    institution' dummy) measures the probablility-weighted sum of:

    -   impact of institution within course ($T_{\omega}=$2 versus 3);
        for those who would 'fully comply' (enter course at institution
        if $Z_{\omega}=1$, enter course at other institution if 0)

    -   impact of the course at fp-institution versus second-best course
        at fp-institution for 'institution-loving' noncompliers; those
        who would enter the course *only* if they get the fp-institution
        and otherwise another course at the same institution

    -   effects for perverse defiers

[^1]: Cf 'winning institution' impacts human capital, social networks,
    etc identically for everyone; e.g., not a greater effect for men
    then for women, nor a greater effect for those entering particular
    specializations.

[^2]: Cf 'winning institution' does not effect the specialization
    entered nor the location of residence, nor are both determined by a
    third factor.
