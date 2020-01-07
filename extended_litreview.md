% A Note: Most important papers to read and incorporate, for methodology
% (Returns to institution in the Netherlands, Parey, Reinstein, Vellekoop)

[//]: # (Convert as: "pandoc extended_litreview.md -f markdown -t latex -s -o ext_litreviewmd.tex --toc --toc-depth=3",  compile in latex )
[//]: # ("pdflatex  ext_litreviewmd.tex --batchmode geometry:margin=.5in")


See also Literature overview (v0_2015_11_19).xlsx

-   K & Mogstad (updated version) on meaning of treatment effect

-   Ketel et al (and citations) (a) on identifying effect of attendance from lottery instrument (b) On using early years’ income to make inferences about lifetime income

-   ?Machin on using weights to impute lifetime income, considering cohort and time effects etc. (Also Bhuller et al?)

-   Deming et al; Cullen et al; interpretation of a highly comparable
    lottery

-   Possibly: ?Carneiro, Heckman and Vytlacil ... on policy interpretations of IV, Hastings et al on differentiating treatment effect ?by observable

    - And Pinto on 'moving to opportunity'; mediators and selection/Roy models

-   Hoxby?

<!--
-  Angrist et al: "Leveraging Lotteries for School Value-Added: Testing and Estimation"; generating value-added predictions with lottery noncompliance?, and techniques for using lotteries to 'match the moments' and exploit the clean lottery identification outside of where there are lotteries
-->

# Overview, survey, and methodology papers

## See also Carneiro et al, 2011

## Machin, 2008: “The new economics of education: Methods, evidence and policy”

### History

-   Human capital approach (Becker, 1964), dynamic investment problem, education as a means to earn a return
-   Mincer work on functional firm, later ’extended or augmented Mincerian equations’
-   Criticisms of human capital, including signaling/screening models, overeducation (Freeman 1976), social and private ROR
-   Current upsurge (after lag in 1980’s),
    -   Europe starts to be represented
    -   Spillovers from other fields:
        -   cross-country growth papers, labour-market inequality, education in development,
        -   empirical PF and ’financial resources devoted to schools (Hanusheck ’86), intergenerational mobility
    -   More and better data, register and admin data, international test score data, survey data
    -   Policy relevance, ’evaluation culture’
    -   Methodologies: ’research design approach’ (Card 2006); quasi-experimental work
    -   Todd and Wolpin ('03) on how to interpret parameters


***

- Papers on changes over time in intergenerational mobility
- Papers on impact of choice and competition (esp in UK, esp at primary levels): Evidence on the (small) impact of having more schools in the area to choose from on student achievement
- Comparable to our ’impact of getting institution of choice’?

## Meghir and Rifkin, 2011: ’Econometric methods for research in education’ (in Handbook)


# Lottery designs: Higher education

## Ketel et al @ketel2012returns “The returns to medical school in a regulated labor market: Evidence from admission lotteries” (March 2013 version)

### Main finding:

> We find that in every single year after graduation doctors earn at
> least 20 percent more than people who end up in their next-best
> occupation. Estimated earnings profiles suggest that the life-time
> difference is even much larger: 22 years after the lottery the
> earnings difference is almost 50 percent.
>
> ... Not only driven by ... the top end ... the whole earnings
> distribution is shifted to the right
>
> ... cannot be attributed to differences in working hours.
>
> Doctors are more likely to be married and to have children.

Very much motivated by ‘barriers to entry’ in medical profession.

Suggests we ‘should not’ find results for other lotteries:

> “Only a small fraction of this difference can be attributed to
> differences in working hours and human capital investments. We
> therefore interpret the return as a rent due to the restricted supply
> of doctors in the Netherlands.”

### Differentiation:

> The returns do not vary with gender or ability, but are lower for
> individuals with a stronger preference for medical school.

*Note: We might find different results for institution.*

### Background and institutional details

*Time to completion:* “In total, the  complete medical study takes
between six <span>\[</span>for no specialty, not even GP?<span>\]</span>
and 15 years <span>\[</span>for PhD<span>\]</span>”

### (Returns to) specialization, industry details:

Page 3, interesting graph on extremely high returns to specialist MD’s
in the Netherlands (highest in the world)

-   About 45% are registered specialists; males more likely to do this.

-   About 30% GPs, 10% social doctors, 15% no specialisation (women more
    likely to be each of these).

-   About 2.9/1000 Dutch are practicing doctors. About 1/10,000 is a medical graduate (? or is this ’graduates in a particular year?’)

-   75% of hospital specialist doctors are in “partnerships”, a joint venture of self-employed individuals. 1999-2005: Partnerships get lump-sum payments negotiated with hospitals. After 2005 a fee-for-service was added to this.

### Probability of admission

Figure 1 plots these probabilities for each category. All categories always had a significant chance (minimum chance about 25% for F’s in 1997). A’s always got in until 1993, when this rate began to drop, reaching a low of about 0.73 in 1997 (but back to 1 for 1999 applications).

### Compliance:

69% of rejected first-time applicants try again.

> Only five percent of the lottery losers never register for higher
> education in the Netherlands. ... Of the <span>\[</span>ultimate
> losers who enroll in NL ed<span>\]</span> 32 percent enroll in a
> health related field. ...<span>\[</span>Also<span>\]</span> Sciences
> (15 percent), Social and Behaviora l Sciences (15 percent), Engineering
> (ten percent), Economics (nine percent) and Law (six percent).

### Data issues and ’ad hoc’ transformations

-   They have lottery data from as early as 1988 (how?) and do not go past 1999.
-   Exclude earliest year because they can not know if that was the first attempt or not. (do we need to do this?)
-   Exclude A’s because “almost all of them are eventually admitted to medical school.”
-   “We lose 60 observations without a valid social security number, which are evenly distributed among the winners and losers of the first lottery (p-value of equality is 0.18)”
-   They observe “GPA high school exams (0-10)”. *How!?*

### Techniques

- Construct “synthetic experience-earnings profiles”

Ketel et al, second stage:

$$Y_{it\tau}=\alpha_{t}+\gamma{}_{t-\tau}+\delta_{t-\tau}D_{i}+X_{i}\beta_{t-\tau}+LC_{it}+U_{it\tau}$$

$Y_{it\tau}$: Labour market outcome of individual i in year t who applied for the first time in year $\tau$

$D_{i}:$ Completed med school

$X:$ Vector of controls including gender, ethnicity, and age at first lottery

$LC_{it}$: Interaction between lottery category and year of first lottery

### Robustness

> A possible confounding factor in the instrumental variable strategy is
> that disappointment of losing the first lottery may have a direct
> effect on earnings in the next-best occ upation. To assess this
> possible channel, we report results from admission lotteries for two
> other university studies, one of which does not give access to a
> regulated labor market. We find no earnings difference between winners
> and losers of the first lottery for that study. This suggests that the
> disappointment of losing an admission lottery does not reduce future
> earnings.

*Comment: But are the standard errors so small that they can rule this out? This may be very different for the medical case. And it is not just ‘disappointment’ but the effect of delay that makes the comparison
difficult.*

## +Estimating the payoff to schooling using the Vietnam-era draft lottery, JD Angrist and A.B. Kreuger - NBER working paper, 1992 - papers.ssrn.com

# Lottery designs: Earlier education

## Chetty et al: “How does your Kindergarten Classroom affect your earnings? Evidence from Project Star” (2011?)

They do a good job of explaining how to interpret their results:

“Students randomly assigned to a KG teacher with more than 10 years of experience earn an extra \$1,093 (6.9% of mean income) on average at age 27 relative to students with less experienced teachers.”

“FN: Because teacher experience is correlated with many other unobserved attributes such as attachment to the teaching profession we cannot conclude that increasing teacher experience would improve student outcomes. This evidence simply establishes that a students KG teacher has effects on his or her earnings as an adult.”

They also “use an analysis of variance approach analogous to that in the teacher effects literature (summarized in X and Staiger 2010) to test whether earnings are clustered by kindergarten classroom.”

## Deming et al; Charlotte-Mecklenberg; “School Choice, School Quality and Postsecondary Attainment”

*Matthias: US data, School lottery with nearly exactly same setup (AER P&P, one Econometrica R&R)*

Give an ordered preference list. If a school is oversubscribed, there is a lottery.

-   look at “what is the effect of winning the lottery”

-   ... track future test scores.

### Two key tables:

1.  Effect of winning the lottery on test score, other outcomes.

2.  Differences in school characteristics if you win the lottery.

**DR: Note: they don't directly regress school characteristics on outcomes; Do they differentiate by 'winning' school outcome?**

-   AER piece – reduced form regression.

-   Econometrica paper: from students choice, they recover an estimate of the academic aspiration of the student – use distance to impute this. (Structural)

*Econometrica paper?* Winning the lottery may not be good for your test scores if \[academics?\] is not your goal. They estimate your preference for academic schools, and then look for the interaction. .... those who care about the academic aspect benefit from winning.

## David notes on Deming et al AER paper

-   \`\`Significant overall increase in college attainment among lottery winners who attend their first-choice school. ’

-   “impacts of choice are strongly predicted by gains on several measures of school quality.”

Much research “uses school lotteries to estimate impacts on elementary and secondary attainment”; little to nothing on HE lotteries!

They discuss in general the ‘effects of school choice’ on later outcomes; we could motivate our ’reduced form’ estimates as ’effects of getting one’s top choice’. This may be interesting in itself.

 anThey focus on first preferences only.[^1]


[^1]: \`\`In principle we could estimate a nested model that incorporates multiple choic es and accounts for students’ ‘risk sets’ (Abdulkadiroglu et al. 2011). However ... there is almost no randomization on second and third choices.

\

### 2sls

- They use 2sls because many who lose the lottery still find a way in to their chosen school.

- *We also do this (@todo: cite as precedent), because of swaps etc., and because it is also not “neutral” for us to throw out the data where Reason$\neq 1$.*

> We begin by following the standard approach in lottery-based studies
> of school choice, which estimate the average impact of winning the
> lottery across multiple schools and grades (Rouse 1998; Hoxby and
> Rockoff 2005; Cullen, Jacob, and Levitt 2006; Hastings, Kane, and
> Staiger 2008; Hoxby and Murarka 2009; Abdulkadiroglu et al. 2011;
> Deming 2011; Hastings, Neilson, and Zimmerman 2012).

$$\begin{aligned}
(1)\:A_{ij} & =\delta W_{ij}+\beta X_{ij}+\text{\textgreek{G}}_{j}+\varepsilon_{ij},\end{aligned}$$

> “where $W_{ij}$ is an indicator variable that is equal to one if
> student $i$ has a winning lottery number for admission to school j,
> $A_{ij}$ are academic outcomes of interest, $X_{ij}$ is a vector of
> prelottery covariates that is included only for improved precision,
> $\Gamma_{j}$ is a set of lottery fixed effects, and $\varepsilon_{ij}$
> is a stochastic error term.”
>
> \`\`The \[$\delta$\] parameter from equation (1) gives the
> intent-to-treat (ITT) impact of winning the lottery on student
> outcomes. In most specifications, we use the lottery assignment as an
> instrumental variable (IV) for enrollment in a student’s first-choice
> school in the fall of 2002. This results in the following two-stage
> least squares (2SLS) specification with enrollment $E_{ij}$ as the
> endogenous variable in the first stage:

$$\begin{aligned}
    E_{ij} = \theta W_{ij} +\pi X_{ij} +\Gamma_j +\epsilon_{ij} \\
    A_{ij} = \delta \hat{E}_{ij} +\beta X_{ij} + \Gamma_j +\epsilon_{ij}\end{aligned}$$

\[Note: $E$: enrollment\]

> Since some students who lost the lottery still managed to enroll in
> their first choice, these estimates are local average treatment
> effects (LATEs) for students who comply with their lottery status
> (Angrist, Imbens, and Rubin 1996). Lottery fixed effects $\Gamma_j$
> are necessary to ensure that the ex ante probability of admission to a
> first-choice school does not differ between lottery winners and losers
> (Rouse 1998). In equation (3), $\delta$ gives the weighted average of
> outcome differences summed over each individual lottery, with weights
> equal to $N \times [p(1 ? p)]$ where N is the number of applicants and
> p is the probability of admission (Cullen, Jacob, and Levitt 2006).

### Test of randomization
“Replacing the outcomes $A_{ij}$ ... with predetermined covariates such as race, gender, and prior test scores. If the randomisation was done correctly, winners and losers should be  balanced on all characteristics that are fixed at the time of the lottery.”

### Regression of effect of winning on differences in uni characteristics, on differences in “mediating outcomes”

“we examine how the impact of choice varies with school characteristics ... construct a measure of college ’value-added’ ... show that lottery winners with the largest gains in school quality experience the largest gains in postsecondary attainment”

– *this is like our ’projection’ of estimates onto the universities attributes. However, they do not claim to have identified the <span>\*</span>impact<span>\*</span> of these attributes.*

They find a zero or negative effect for boys, and small effects $\rightarrow$ *this suggests that it is* not *obvious that getting one’s first preference is beneficial, motivating our work.*

“...this is the first study to examine the impact of school choice on postsecondary attainment using a lottery-based research design”

### Their critique of RD:


> Because these RD studies necessarily compare the highest scoring
> students in a lower-ranked school to the lowest scoring students in a higher
> ranked school, they identify peer effects (and responses to resources
> and other school-level differences) at a particular margin. These
> impacts will not necessarily generalize to the range of applicants in
> a school c hoice lottery, particularly in high school when identity and
> peer sorting can generate unpredictable results (Akerlof and Kranton
> 2002, Carrell, Sacerdote and West 2011, Cicala, Fryer and Spenkuch
> 2011).

- @Todo: mention this critique in our motivation

### Attrition

> Students who leave CMS are followed in the NSC data. ... we can
> measure their college attendance as long as they were ever enrolled in
> CMS. Thus, for postsecondary outcomes only, bias from nonrandom
> attrition is not a concern. ...Unless coverage is differential for
> lottery winners and losers, the results may be attenuated but not
> otherwise biased.

> College “value added” in column 6 is estimated as the school average
> residual from a student-level regression of an indicator for four-year
> college enrollment on t he set of covariates in equations (2) and (3),
> including student demographics and prior math and reading scores.
> \[Estimated out-of-sample\] ... We present the results in column 6 not
> as true unbiased measures of school quality, but to show that
> demographics are not a perfect predictor of college attendance rates.

## Cullen et al, 2006 – “The Effect of School Choice on Participants: Evidence from Randomized Lotteries” [Chicago public schools]

- Chicago Public Schools

### A very similar motivation as us:

> Many CPS high schools use lotteries to allocate spots when they are
> oversubscribed, and we analyze 194 lotteries at 19 of these schools.
> Our use of lotteries as the source of identifying variation permits
> straightforward analysis based on comparisons of means. In principle
> and in practice, controlling for other characteristics will have
> little impact on any conclusions drawn, although we do so to increase
> the precision of our estimates. Sample selection in terms of which
> students choose to apply to a particular school will not bias our
> estimates, because among the applicants to a given school, those who
> win or lose the lottery will on average have the same
> characteristics.7

\[Footnote: One does still need to use care in interpreting the resulting parameter, which is an unbiased estimate of the impact of winning a lottery for the students who applied to the lottery, but may not generalize to other students.\]

- @Todo: compare ourselves to them, because our estimates are relevant to a near-universal group

- However, they can interpret (?) their estimates in terms of a relevant policy intervention – ”school choice”, relative to the norm of being assigned to one’s local public school. Our case seems more subtle.

### Find little effect on traditional measures:

> Comparing lottery winners and losers, we find little evidence that
> winning a lottery provides any benefit on a wide variety of
> traditional achievement measures, including standardized test scores,
> graduation, attendance rates, course- taking patterns, and credit
> accumulation. ... ... ...students who, ex ante, stand to gain the most
> in terms of peer quality by winning a lottery, in practice appear to
> realize the smallest benefits of choice \[and even seem to be hurt by
> it\] ... consistent with literature on the importance of mismatch
> (e.g., Light and Strayer (2000)) and of one’s relative position (e.g.,
> Kaufman and Rosenbaum (1992)) in educational settings.
>
> ... \[may\] mistake higher school outputs for higher school value
> added.

- @Todo: cite this and see if the same is going on in our case

> ... might apply to magnet schools for predominantly nonacademic
> reasons
>
> ... \[find weak support for improvements on nonacademic outcomes like
> disciplinary action\]

### They find that the highest value-adding  schools not the most popular, as we also seem to find: (@todo: cite)

> Schools with high mean achievement tend to be popular with students,
> as measured by either the competitiveness of the lotteries or the
> take-up rates of lottery win ners ... Notably, the schools that we
> identify as high value added are not the most popular schools (the
> correlation between our value added measure and the acceptance and
> take-up rates is 0.27 and 0.09, respectively). In terms of the number
> of lottery participants, the high-achieving schools (particularly Von
> Steuben) are heavily overrepresented.

#Abdulkadiroglu et al

*Takeaways:* We can use propensity score/matching. This can deal with the bias from noncompliance via swapping, combining the propensity score control with a 2SLS strategy (just as they use charter offers as an instrument for charter school attendance).

>  Our approach generates efficiency gains over ad hoc methods, such as those that focus on schools ranked first, while also identifying a *more representative average causal effect*.

> As in other stratified randomized research designs, conditioning on the propensity score eliminates selection bias arising from the association between conditioning variables and potential outcomes

> [Large payoff:] Full stratification on preferences and priorities reduces degrees of freedom markedly, eliminating many schools and students from consideration, while score-based stratification leaves our research sample largely intact.

>all applicants with score values strictly between zero and one contribute variation that can be used for evaluation, the propensity score identifies the maximal set of applicants for whom we have a randomized school-assignment experiment.

- The "Equal Treatment of Equals" (ETE) property is key: 'lotteries ensure that students with the same preferences and priorities have the same chance of obtaining highly- sought-after seats.'

> In principle, all features of student preferences and school priorities can shape the probability of assignment to each school.

> Conditional on preferences and priorities, however, mechanism-generated assignments are independent of potential outcomes.

- With ETE, can estimate propensity score through simulation ... repeatedly draw lottery numbers, compute relevant average assignment rate
    - We should be able to do better than this (use our threshold?)
    - NV: Yes - I remember that Chris Walters said something to this extent, that we can directly condition on the probabilities of winning for the groups that satisfy ETE:  $\theta_i=\theta_j$.
    - ..
    - NV: One concern that Chris had with respect to our lottery was if it was strategy-proof, especially for the lower mark categories. I do not know how to make a case for strategy  proofness (but I need to read Angrist etal better to see if our lottery fits into one of the lotteries they mention in the appendix.
    - ... DR: It is not really strategy-proof, but we can try to make a reasonableness case (we discussed this earlier) that nearly all respondents will find it in their best interest to put their first-choice institution. I was hoping one of us could try to get some direct evidence on this; asking people, seeing what advice was given at the time. We can also interpret our estimate in the absence of strategy-proofness, perhaps as a biased-towards zero measure of the impact of getting one's first *preference*.

***

Also:

- Our lottery might be described as a 'random serial dictatorship' over institutional preferences: choose by priority (preference for an institution first, also special circumstances) with ties broken by random. (In our case, random within each mark class).


- Insight into non/semi-parametric estimation of heterogeneity of treatment effects by observables and unobservables


- Actual technique:

> our empirical evaluation strategy uses an indicator for DA-generated charter offers as an instrument for charter school attendance in a two-stage least squares (2SLS) setup. This 2SLS procedure eliminates bias from non-random variation in preferences and priorities by controlling for the DA propensity score.

##Abulk ea model

###Setup and notation

$I$ set of applicants indexed by i

Capacity vector $\mathbf{q}$

$s=0,1,...,S$ indexes schools, $s=0$ the out side option

- Preferences a partial ordering over schools
- \rho_{is} is i's priority at school s (lower number means higher-priority)
    - $\mathbf{\rho_i}$ is i's vector of priorities at each school
    - In many cases many students all have the same priority at a school
    - *For us*: A function of preferences, year, mark category (and lottery number)

\

- Applicant type $\theta_i \in \Theta$
    - combines preferences and priorities

\

Assignment vector $\mathbf{\mu}$ ... assignment for each applicant; Determined by a 'mechanism', e.g., randomised serial dictatorship (RSD)


'Stochastic' mechanism assigns probability of admission

- Formally, maps economies $(I,S,\mathbf{q},\Theta)$ into a distribution of possible assignments described by a matrix of probabilities that each applicant is assigned to a spot at each school.

###ETE property

ETE: ''For any school choice problem and any applicants i and j with $\theta_i=\theta_j$, we have that $\mathbf{p_i}=\mathbf{p_j}$''

\marginpar{\small \singlespacing We should have this property for our instrument, 'lottery assignment to institution' (but not for post-swap outcome) if we let the priority be a function of mark. Note that we *don't* however have a serial dictatorship by these priorities, as a lower mark may get in over a higher mark. We might be able to redefine a more exact priority as a function of mark and lottery number, but I don't know if this is worth the effort.}


 > We'd like to estimate causal effect of attendance at a particular school or group of schools relative to one or more alternative ...  Complicated by the fact that school assignment reflects preferences and priorities ... [which are]
related to outcomes like test scores. [With ETE] ... the distribution of offers generated by a stochastic assignment mechanism is viewed here a stratified randomized trial, where the “strata” are defined by type.

*Key claim:*

> ETE makes offers conditionally independent of all possible confounding variables...

*Justification*

Let:

- $D_i(s)$: a dummy variable for 'i is assigned to school s by stochastic mechanism'

- $W_i$: random variable/vector of characteristics (covariates or outcomes)

- $W_{0i}$ and $W_{1i}$:  Potential values of $W_i$ when $D_i(s)=$ 0 and 1, respectively.

    - *Potential* outcomes are nonstochastic, unchanged by school assignments ... other (pre-assigned) characteristics like gender and parent's earlier income in $W_i$ are unaffected by assignment ...

    - Characteristic $W_i$ 'fixed under re-randomization if $W_{0i}=W_{1i}$ for all $i$


**Proposition 1**:

... If assignment mechanism is ETE and $W_i$ fixed under re-randomisation $\rightarrow$

$$P[D_i(s)=1|W_i=w,\theta_i=\theta]=P[Di(s)=1|\theta_i =\theta]$$

**DR: In other words, given preferences and priorities, the probability of assignment does not depend on any fixed characteristic (including potential outcomes)

**Skip for now: Conditional independence for DA**

> This argument is made formally in Appendix A.1, which also shows that other mechanisms satisfying ETE include DA with multiple tie-breakers (that is, different lottery numbers at different schools),The immediate acceptance (“Boston”) mechanism with single or multiple tie-breakers, Random serial dictatorship, Top trading cycles with single or multiple tie-breakers

*DR: Check these, to see where our mechanism fits and be sure that the ETE property holds*

##Propensity score pooling

- Prop 1 implies that for any ETE mechanism 'conditioning on $\theta_i$ eliminates any selection bias arising from the association between type and potential outcomes.' However, 'full-type conditioning reduces the sample available for impact evaluation.'

Propensity score for a market: $p_s(\theta)=Pr[D_i( s)=1|\theta_i=\theta]$

Rosenbaum and Rubin (1983): propensity score conditioning is enough to ensure that offers are independent of potential values ($W_i$) --

$$Pr[D_i(s)=1|W_i=w,p_s(\theta)=p] = Pr[D_i(s)=1|p_s(\theta)=p]=p$$

> propensity score conditioning eliminates the possibility of omitted variables bias due to the dependence of offers on type.

**Ex 1**: Where 'full type-conditioning' is impossible, can still estimate with ppsty scor

###DPS data, descriptives

> ... computed simulated scores by running DA for one million lottery draws for each year. ... the proportion of draws in which applicants of a given type were seated at each school.

- Comparison of charter applicants subject to random assignment to full charter applicant pool, and to full pool

###DPS schools randomised

- For some schools, randomization is only among 2nd choices (as all 1st choicers get in?)
- Fig 1 plots sample size gains from using those additional to 1st-choicers
    -DR: Can we do similar?
- In some undersubscribed schools, seats were still randomized $\rightarrow$ motivates 'a large market approximation to $p_s(\theta)$  that reveals the sources of random assignment in a large class of mechanisms satisfying equal treatment of equals.
    - Can we do something like this?

##Score Theory
### A Large Market Approximation

- Probability of assignment to $a$ under DA determined by (i) failure to win a seat at higher-ranked schools and (ii) odds he wins $a$ in competition with others who ranked $a$ and failed to find seats at higher-ranked schools

###DA score balancing tests

> Specifically, for each of these 400 draws, we regress $W_i$ [covariate] on a saturated model for the estimated (or simulated) propensity score along with a dummy for charter offers. Table 4 reports the average coefficient on offer in models that dummy all score values inside the unit interval.

- *DR:* I'm not sure exactly what this means; what exactly do they do 400 times?

>  control for the simulated propensity score balances covariates almost perfectly. [as does 'frequency and formula estimates of the DA propensity score']

> saturated control for the simulated score requires some smoothing ... reduced sample available for estimation of models that control fully for a simulated score rounded to the nearest thousandth (the sample size here falls from 2,678 to 2,263).

***

> 2SLS estimates of charter attendance effects are similar to the cor- responding semiparametric estimates.

***

*Jumping ahead to...*

##Unbundling heterogeneity

- they can identify 'the distribution of school sectors for the group of charter-lottery compliers' 'enrollment destinies for compliers'

They do this following Abadie '02: I believe this is an IV regression of 'noncharter category attended' on 'assigned to charter';
as compliers will always go to a charter  if assigned to it, these coefficients (as 'differences' from the charter assignments)
give us the destinies for losers who are compliers.

*Anything similar we should do?*

##Additional school sector effects

> By pulling innovation schools out of the non-charter counterfactual, we capture charter treatment effects driven mainly by the contrast between charter and traditional public schools.

*Note*: Similarly, we might want to pull 'course noncompliance' out of the non-first-choice  institution counterfactual, to isolate the institution effect.

- but here they must assume homogeneous effects as 'identification of multiple LATEs with  unrestricted heterogeneity is challenging' (citations: Behagel ea '13; Blackwell '15, Hull '16)

- 'The instruments for the multi-sector model are indicators for offers in sector k'
    - And the propensity scores are sector-specific (?)
- Additive versus 'joint score control'; they say these are (asymptotically?) equivalent; I didn't understand this discussion.

- Table 8: *Distinct estimates* isolating each sector (applicants to that sector only), and comparing this to models with a coefficient for each sector
    -?? What is the difference, and should we do something like their columns 4-5?

##Alternative IV strategies

>

#Random assignment (in other contexts)

- Angrist(1990), Angrist and Chen (2007)
- ?Angrist and Lavy (2008)
- Angrist et al (2002) (vouchers in Colombia)
- Angrist and Kreuger (1992)


#Higher ed - institution quality, non-lottery identification strategies

## College and Beyond, NLS-72 (results reported here use NLS-72)

“The authors compare the future earnings of students admitted to the same set colleges who choose to attend different schools. They measure the quality of schools by a single parameter, the average SAT score of admitted students.” Various controls. Effect of a 1/100th point increase (??) in the schools average SAT score relative to other schools admitted on log annual earnings, =0.013.

## Dale and Kreuger (2012), “estimating the effects of college characteristics over the career using administrative earnings data”

### Approach
Use college and beyond survey linked to detailed earnings records from the Social Security Administration. Estimate the effects of several college characteristics (that are commonly used as proxies for college quality) for a recent cohort, entering college in 1989.

This paper follows the cohort from 14 years after graduating college *(@todo: Incorporate: our data is nearly as good)*

### Finding (largely null)
- They find a small to no effect of elite university after controlling for SAT scores and SAT scor es where applied.
    - One could argue that this is even an upper bound, given the standard story of unobserved ability and self selection (ambition and match quality) bias.
– do find effects for minorities and when parents are low education.
- No evidence of increased returns between 1976 and 1989 cohorts.

### Literature:
Hoekstra, 2009, rd design, admissions cut-off: 20% higher earnings to 10 years after graduation for white men (nought for women)

- *@todo: Incorporate: similar gender difference to us*


Most of the literature that use a single characteristic as a proxy for college quality. \`\`However, Black and Smith (2006) show that the estimates… are attenuated when a single measure is used…

****

*Aside: Hirshbein (2011) impact of GPA is higher at less selective schools, consistent with signalling models. Perhaps we could do this comparing before and after the Drenth reform and introduction of decentralised selection. They find the “field of study <span>\[</span> (rather than institution)<span>\]</span> drives the heterogeneity in payoffs to post-secondary education.”*

****

### Stability over time
- Cites various evidence, largely finding increased returns to attending college for more recent cohorts.

– *@todo: We should examine the stability of our estimated returns over time, to see if there is any evidence for increasing returns in the Dutch context*
****

### Modeling


Log linear earnings equation in students’ attributes. Note equation 1. They consider variables unobservable to researchers, which are partly observed by admissions officers.

\
They consider the “selection adjusted”, “self-revelation model” from Dale  and Kreuger (2002). This assumes “students signal their  potential ability, motivation, and ambition by the choice of schools they apply to. If students with greater unobserved earnings potential are more likely to apply to more selective colleges ...”

\

Can model one component of the error term as a function of the average SAT of schools applied to. If the residual error term is uncorrelated with this measure, can solve a selection problem by including this in wage regression.

D&K 2002 estimated a “matched applicant model” with dummies for groups of students with the same admissions decisions from colleges. “The self revelation model is a special case of the matched applicant model”

- Why a special case?

They note that either of their models, selection correction or matched applicant, may be biased if enrolment decisions (conditional on admission) depend on unobserved attributes of the student.

If there are heterogeneous effects, there may be self-selection based on perceived potential returns, as in the Roy model of occupational choice. This can lead to a bias in either direction and a difficulty interpreting the average slope.

##Also see
-   Twin studies: (Behrman et al, 1996) “College Choice and Wages: Estimates Using Data on Female Twins”
- Cross-state variation in the US (Fortin, 2006)

-   The Effect of College football on Earnings: Results from the N B E R-Thorndike Data Terence J. Wales The Journal of Human Resources, Vol. 8, No. 3 (Summer, 1973), pp. 306-317

-   Black and Smith, 2005. effect of a one standard deviation increase in college quality on log hourly wages in 1988: 0.043. (Controlledregression)

# Higher ed - attendance and field of study: RD
## Field of Study, Earnings, and Self-Selection, February 2014, Lars Kirkebøen, Edwin Leuven, Magne Mogstad [@kirkeboenfield]

**See mogstadmodeling.lyx**

*These are notes on the earlier draft, need updating*

###Summary and key issues

-   Also an RD strategy. Norway. Considers the Roy model where individuals chooses fields of study j over k whenever 'her relative productivity advantage in field j $(q_{ij}/q_{ik})$ exceed the relative prices $(f_{ik}/f_{ij})$'

- Know students’ rankings of fields!

-   “Widely different payoffs to fields.

> by choosing Science instead of Humanities, individuals almost triple their earnings early in their working career. By comparison, choosing Science instead of Engineering or Business has little payoff.

- *@Comment: “By choosing”, so what sort of identification is this?*


-   Students 'tend to choose fields in which they have comparative advantage.'

    -   *Todo: Think about how they identify this, can we do similar?*


### Some key results (for us)

“Strategy-proof measures of individuals’ ranking of fields.”

– *Note: we may not have strategy-proofness for institutional choice; e.g., may select an institution that is not their first preference  but which is predictably less oversubscribed to avoid being placed in their least favorite institution.*

> Consistent with individuals choosing fields in which they have comparative advantage... We also test and reject assumptions of constant effects or restrictive preferences, suggesting that information on next-best alternatives is essential to identify payoffs to field of study.

> ... For example, we are able to examine whether the gains in earnings to persons choosing Science instead of Teaching are larger or smaller than the gains in earnings to those choosing Business instead of Teaching.

- @Comment: *But is this a relevant comparison? Why should these 2 groups be similar, and why are they policy-relevant? ... Those choosing between business and teaching, e.g., may be an exotic sample.*

> Heckman et al. (2006) and Heckman and Urzua (2010) discuss the  challenges \[in unordered choice models\] …individuals induced into a state by a change in an instrument may come from many alternative states, so there are many margins of choice.

> A simple choice model with only one factor ability-as-IQ “is inconsistent with the pattern of selection we estimate .”

– (Particularly earlier draft) suggests we need to seriously consider self-selection on unobservables, at least at the subject level.
- @Todo: *Consider -- Maybe an open question at the institutional level?*

### Modeling and econo metric discussion

> impose separability between field and institution [and cohort, in estimating impact of institutional quality]
> allows us learn about the role of any course characteristic that differs across admission cutoffs, and that is correlated but not perfectly collinear with field

- @Comment: *seems too strong an assumption*


***

Consider choice between three fields ${0,1,2} $. Interpreting estimates of observed earnings as a function of completing each field:

\

$$y=\beta_0+\beta_1 d_1 + \beta_2 d_2 + \varepsilon$$

“Multi-valued instrument shifting cost/benefit of each field” assigned to $Z \in {0,1,2}$, $z_j$ as indicator of assigned group.

Standard IV assumptions in treatment context (Exclusion, independence, (rank))

$$\begin{aligned}
  y^{d,z}=y^d \forall d,z \\
  y^d,d^z \perp Z \forall d,z \\
  \label{dd}\end{aligned}$$

Payoffs can differ by fields compared, and by individuals.

$$\begin{aligned}
  Y =   Y_{1}+\mathbf{1_{\mathbf{[D=2]}}}(Y_{2}-Y_{1})+\mathbf{1}_{[D=3]}(Y_{3}-Y_{1}) \\
E[Y|D=3]-E[Y|D=1]=  E[Y_{3}-Y_{1}|D=3]+E[Y_{1}|D=3] - E[Y_{1}|D=1]\end{aligned}$$

**1. Their econometric discussion**

Useful discussion of the two key challenges:

i\. decomposing this into correcting for selection bias (or OVB), and

ii\. “to get the counterfactual right”. We may want to use their notation.

*Comment: I differ with some of their inferences from this, however, see discussion below.*

*Comment: Selection bias/OVB issue that they discuss here is about the differences in unobserved ability/potential return from “Winners” versus “losers” who wanted to get into a particular field. This does not get at the differences in potential return between people who have different first choices.

**2. Confusion over methods**

*Comment:* I’m particularly confused about section 4.2 (Estimating counterfactual outcomes) and columns 2 and 4 of table 5. I think we may need to go back to the earlier papers they are citing to understand what this is about. (Imbens and Rubin, 1997; and Abadie, 2002)

**3. What their estimates mean and what they cannot say**

*Comment:* I understand why they are doing some of what they’re doing. If one wants to assess whether people are sorting by their comparative or absolute advantage, it is important to know an individual’s return relative to a particular other field.

If I’m understanding correctly they are doing something like comparing returns to different fields “j and k” for those who chose these fields “j and k” as a first choice, who all put teaching as a second choice. This should allow estimates of the differential returns to these first choice fields (relative to teaching) for those who make these first choices; it should not allow them to estimate the returns to different first-choice fields (or institutions) for a homogenous group. The results are useful I think for analyzing the choices made by students based on comparative advantage (but see below). However, in the exercise they’re doing (see, e.g. table 5), they cannot really answer “which field or institution adds more value for a particular group?” Those choosing fields j and k may differ in fundamental ways, even though both have made the same second-choice.

Thus, I think that their motivation in the abstract:

> we find that different fields have widely different payoffs… By choosing engineering instead of teaching, individuals more than double the earnings they receive. By comparison, choosing humanities or nursing instead of teaching has little payoff.

... is misleading. This suggests that the same individuals would be “better off” choosing engineering than choosing humanities, which I don’t think their results allow them to say.

<span>\[</span>similarly, they write, “this allowed us to compare the payoffs to different fields” ... Should be ’for those choosing these fields as first choices relative to a common second choice’<span>\]</span>

**4. Specificity of comparisons; are these the relevant ones?**

*Comment:* In addition to the points above, their strategy forces them to compare across students who all had the same second preferences. For exposition, they only focus on teaching, but I suspect that even if they were going to try to do a broader analysis there will be cells with very few observations. This would make certain comparisons impossible; e.g., few people choosing humanities may choose oil engineering as a second choice. The comparisons may reflect unusual or “exotic” groups. For example, among those choosing engineering as a first choice the students who choose teaching as a second choice are a rare bunch and perhaps very different from the typical engineering students.

**5. Interpretation of “standard” IV estimator; cost of frictions/benefit of expansion**

> Without further assumptions, these <span>\[</span>LATE, all second preferences<span>\]</span> estimates are only informative about the actual earnings in the chosen field relative to the counterfactual earnings in an arbitrarily weighted average of alternative fields.


(This quote is from their earlier draft, but they say something similar in the Dec 2014 version)

*Comment:* If compliance is perfect, the weights should be meaningful. These should reflect the empirical distribution who choose of those who choose program j, averaging across actual second preferences for those who choose program j. Such estimates should be informative that institutions matter (particularly if the results are large) and also about the impact of extending the number of places at a program or “reducing frictions.”

- @Todo: We need to make this point in our paper

> ..payoffs to a given field among individuals who select this field has no significance as guides to the profitability of policy that changes the number of graduates in that field.

*Comment:* I disagree with this point. If policy increases places in an oversubscribed field, I would expect the new placements to go to the very people who were selecting this as a first choice.

**6. ITT versus impact of completing a field of study**

*Comment:* They claim that since they can follow individuals throughout the system they claim they can estimate actual effects of attending the field rather than just intention to treat effects. I suspect this requires important identification assumptions that they’re sweeping under the rug.

**7. Where are the institution estimates?**

**8. “Learnings about selection”**

Their evidence seems pretty strong that the simpler error models do not hold water. We should be wary about making assumptions like homogenous treatment effects across preferences.

**9. Standard issues with RD design**

As David Card pointed out, if we have heterogeneous treatment effects they are picking up the effect of getting into chosen field only for the particular group that “just barely” made the standards of their chosen field relative to their income in a field for which they may be among the highest qualifying.


## Hastings at all, 2013. “Are some degree is worth more than others? Evidence from college admission cut-offs in Chile”

*First ’modern’ paper on returns to HE?*

Key finding “Returns are positive and significant only among more-selective degrees”

“To our knowledge, this is the first database that has linked administrative data from high school, college entrance exam, college choice, college admission, college matriculation, and tax return date for a broad population. Our college application and admissions data cover 21 full student cohorts.”

– our data has nearly all of this as well, in addition to lottery outcomes and richer administrative data come up next to family outcomes, and institutional data. Although we do not have the administrative data from secondary school, we do have exam score categories for the final pre Univer sity exam.

– rank up to eight degree choices in order of preference. They refer to an institution-career combination as a ’degree’
    - @todo: should we use the same language?
“Students are admitted to the most one of their choices based on the preferences and their score using an algorithm similar to that used in the US medical residency market. This process creates regression discontinuities which effectively randomise students near unpredictable admission cut-offs into institution-career combinations in different fields and selectivity tiers.”

*– this seems like a strong identification strategy. However, there are certain assumptions about linearity or continuity of the regression function required for regression discontinuity work to be valid, and any identification only estimates local effects near the discontinuities,
while our lotteries takes place at all levels.*

*From Mogstad*:
> Hastings et al assume that heterogeneity in treatment effects only depends on observable characteristics”
“Students crossing the threshold for admission into their target degree realised statistically significant earnings gains equal to 2.9% of mean earnings in the population of applicants. Gains range from close to 0 for admissions to the least selective degrees to 9.2% for admission into the most selective degrees. we find a positive and significant effect of threshold-crossing into health or law and social science degrees, and negative and significant effects for admission into degrees in the arts.

> Threshold-crossing estimates measure the impact of admission to particular degree relative to the mix of admissions outcomes for just-rejected students applying to that degree. We add a simple model of earnings determination to outline the assumptions needed to recover the effects of field of study and selectivity on earnings relative to no admission.

*|- This is relative to not getting any admitted to institution at all.
(How?)*

*@Todo: We will have to do something similar, and will build a related model.*

They can estimate the impact of earnings for being admitted to each degree for a student with particular characteristics relative to no admission under the assumption “that heterogeneity in returns… depend only on students’ observable characteristics.”

– *this is a strong assumption. This essentially rules out that students select their institution based on unobservable match specific benefits they anticipate. (Which contradicts Mogstad)*

They then aggregate estimates into categories, “decomposing the earnings gains into contributions from selectivity, field of study and vocational study for students from different socio-economic backgrounds.”

*We want to do something like this, so we should look closely at how they presented and how they defend this decomposition.*

“Annual gains from admission to the most selec tive degrees range from 20.3 to 22.8%. Earnings gains to low- selectivity degrees are near zero even before factoring in tuition costs”

“We find that, students admitted to degrees with strong vocational focus have lower earnings returns. This holds within selectivity tier.”

They argue that returns will vary by socio-economic status depending on whether educational inputs or compliments or substitutes for non educational human capital. They use the poverty rating of a student’s high school to test for these differences; *we can do better from this as we have data on the parents.*

“noisy, but estimates indicate, if anything, larger returns for students from low-SES backgrounds.”

— *Our results seem to agree*

They argue that although there are a handful of studies using regression discontinuity to estimate heterogeneity in return across institution and degree, theirs is the first that gets at long-run outcomes.

They have a good paragraph motivating the importance of this research.

— Market frictions in high return degrees ... “Marginal increases in offerings could raise aggregate income, suggesting supply constraints (Bound and Turner, 2007). ”

— “However, students may be uninformed or short sighted (various evidence), suggesting an information provision role for government.”

— “Higher returns to low-SES students suggests a role for targeted admissions, loans, and recruitment policy (Hoxby and Avery 2012).”

— *this motivation make a good case for why our estimates of the impact of getting into institution of choice, differentiated by institution and demographics, is interesting on its own, even if we cannot cleanly isolate which institutional characteristics are driving effects.*

“excess demand for 65% of all degrees in our data, accounting for 90.2% applications.” “Students are offered at most one admission slot: they are admitted to their most preferred degree for which they garnered a sufficiently high score”

*Paper organisation:* Their second section explains institutional
details and the recruitment process in Chile. The third section
describes the data and application choices in great detail.

****

**Modeling**

> Our empirical approach has two parts. First, we use a stacked
> regression discontinuity design to identify the effect of crossing the
> threshold for admission to a given type of degree on earnings
> outcomes. Second, we use a simple model of earnings determination to
> outline the assumptions needed to recover the earnings effects of
> admission by selectivity, field of study and student characteristics
> relative to  a common outside option from the threshold- crossing
> estimates. Recall that students are admitted to at most one degree
> program. Average annual earnings for individual $i$ admitted to degree
> $p$ are given by:
>
> (1)
>
> $$Y_{ip}=\theta_{p}+\mu_{i}+\phi_{ip}+\omega_{ip}$$
>
> where $Y_{ip}$ is average annual earnings, $\theta_{p}$ is the mean
> earnings gain from admission to degree $p$ in the population (relative
> to not being admitted to any degree, the effect of which is normalized
> to zero), $\mu_{i}$ is an individual-specific component of earnings
> that accrues regardless of admissions outcome, $\phi_{ip}$ is an
> individual-specific return to degree p known to individual i at the
> time of selecting a degree, and $\omega_{ip}$ is a mean-zero
> individual-specific return from attending degree p realized after
> attending p. While $\phi_{ip}$ may play a role in degree choice;
> $\omega_{ip}$ does not.
>
> The average effect of crossing the threshold for admission at degree p
> on earnings is given by:
>
> $$E \left( Delta_p \right) = \left( \theta_p - \sum_q \pi_{pq}\theta_q \right) +$$
> …
>
> The first term is the probability-weighted difference in mean earnings
> gains from admission to degree p versus any other degree in the
> system.
>
> The second term is a probability-weighted average of
> individual-specific gains from admission to degree p relative to
> degree q given that individual i was on the margin of admission to
> degree p and would have attended degree q had he been rejected from p.
>
> *\[Sort of a selection bias te rm, but not quite; ATT vs ATE\*?\]*\*
>
> ...We are interested in estimating $\theta_{p}$ in addition to the
>  threshold-crossing effects

### See also Reyes et al (structural)

Higher ed - attendance and field of study: Instrumental variables
----------------------

## Carneiro et al, “Estimating Marginal Returns to Education”, AER, 2011

-   Naive IV literature found wanting;

-   Strong assumptions necessary for policy relevance violated

    -   Heterogenous returns (on unobservables)

    -   Selection on idiosynchratic returns

-   Paper shows use of local IV to estimate returns to distinct policies


- Impact of *marginal policy changes*

> For example, to evaluate the optimality of a policy that promotes
> expansion in college attendance, analysts need to estimate the return
> to college for the marginal student, and compare it to the marginal
> cost of the policy.

If “individuals do not choose their schooling based on their realized
idiosyncratic individual returns, and thus the marginal and average ex
post returns to schooling are the same” then conventional methods (IV,
RD, selection models) applied to a Mincer equation can estimate the
average returns and thus the impacts of any policy of expansion.

However “we find that returns vary... and, furthermore, agents act as if
they possess some knowledge of their idiosyncratic returns.”

Simplest model is the Mincer equation $Y=\alpha + \beta S + \epsilon$,
where Y is the log wage, S is a dummy variable indicating college
attendance.

Pitfalls of IV (LATE):

> Unfortunately, the people induced to go to school by a change in an
> instrument need not be the same as the people induced to go to school
> by a given policy change, and the returns to the two groups of people
> can differ substantially as we illustrate in this paper.

*Potential outcomes (potential log wage with college, without college):*
$$\begin{aligned}
Y_{1}=\mu_{1}(X)+U_{1} \\
Y_{0}=\mu_{0}(X)+U_{0} \\\end{aligned}$$ *where*
$\mu_{1}(X):=E(Y_1|X=x)$ and $\mu_{0}(X):=E(Y_0|X=x)$

$\rightarrow$ *Returns to schooling:*
$$Y_{1} - Y_{0} = \beta = \mu_{1}(X) - \mu_{0}(X) + U_1 - U_0$$

$\rightarrow$ *Average treatment effects* (ATE, ATT) conditional on
$X=x$: $$\begin{aligned}
\bar{\beta}(x) = E(\beta | X=x) =\mu_1(x)-\mu_0(x) \\
 E(\beta | X=x, S=1) =\bar{\beta}(x)  + E(U_1-U_0|S=1,X=x)\end{aligned}$$

(latent-variable discrete choice); Enrol if net benefit to individual
$I_s$ ($\neq$ wage) is positive

$$\begin{aligned}
I_s = \mu_s(Z) - V \\
S = 1 \text{ iff } I_S \geq 0\end{aligned}$$

Analyst observes $(\mathbf{Z,X}$ but not $(U_0,U_1,V)$.

Assume $(U_0,U_1,V)$ statistically independent of **Z** given **X**.

###Other instruments

- Distance to college instrument: Card (1995), and many others subsequently

- Tuition instrument: Kane and Rouse (1995), Cameron and Heckman (1998, 2001),

- (Innovations in) Local labor market conditions: Cameron and Heckman (1998), Cameron and Taber (2004)

- Policy changes, various instruments (at age 14: presence of a college; at age 17: local log earnings, unemployment rate, tuition in four year public colleges,): Carneiro et al (2010)

- Gosling et al (2000), Schmitt (1995)

- ?Harmon and Walker (1995)

- “Monotone Instrumental Variables: With an Application to the Returns to Schooling” Charles F. Manski, John V. Pepper Econometrica, Vol. 68, No. 4 (Jul., 2000), pp. 997-1010

- Test score cutoffs as instrument: Bertrand et al (JPubE forthcoming)
    – the true cutoff scores for admission are unknown, so these are selected based on goodness of fit – I think this is why they don’t also include a test scores control (only a quadratic), Focuses on differential returns by caste, looks at a variety of outcomes.

###**?Selection models**: Willis and Rosen (1979), Bjorklund and Moffit (1987) <span>\[</span>these are in a sense analogous to IV models<span>\]</span>.

# Higher ed - attendance and field of study: Control strategies and DiD

## Chevalier and Gordon, UK, Propensity score matching

## McIntosh, Further Analysis of the Returns to Academic and Vocational Qualifications

**Control stategies**: [@blundell2000returns], @dale2011estimating - returns to college selectivity

@mcintosh2006further- ? focus on returns to the marginal student, [@dearden1999qualifications](?)

**Difference in Difference**

Differentiated returns
----------------------

Why Are the Returns to Schooling Higher for Women than for Men? Christopher Dougherty The Journal of Human Resources, Vol. 40, No. 4 (Autumn, 2005), pp. 969-988

Harmon, C., V.Hogan and I. Walker (2003) ’Dispersion in the Return to
Education’. Labour Economics, . <span>\[</span>Details<span>\]</span>
Denny, KJ; Harmon, CP; (2001)

Hastings, Kane and Staiger (School Choice)

– they also find effects on other outcomes

Other outcomes and measures
===========================

Returns to program of study:
----------------------------

Black et al. (2003b), Arcidiacono (2004) – Table 8

Sheepskin effects
------------------

Chevalier, A; Harmon, C; Walker, I; Zhu, Y; (2004) ’Does Education Raise Productivity, or Just Reflect It?’. Economic Journal, 114 (499):499-517. <span>\[</span>Details<span>\]</span> Harmon, C Oosterbeek, H Walker, I
(2003)

Degrees Matter: New Evidence on Sheepskin Effects in the Returns to Education David A. Jaeger, Marianne E. Page The Review of Economics and nd Statistics, Vol. 78, No. 4 (Nov., 1996), pp. 733-740

’Testing for sheepskin effects in earnings equations: evidence for five countries’. Applied Economics Letters, 8 (9):635-637. <span>\[</span>Details<span>\]</span>

Semijn \`\`The
role\_of\_education\_and\_selection\_in\_medical\_field.pdf

#Mediators, selection, Roy models

- see Mediators_lit_Pinto_etc.lyx
    - Ultimately, mediating and direct effects cannot be separated except under very strong assumptions
    - In particular, mediating variables (e.g., completing first degree) must be essentially exogenously assigned.
    - Our case resembles the 'mediation model c' in their figure 1: unobserved predetermined variables may have a (causal) effect on proxied (observed) mediators, as well as effects on outcomes. Unobserved mediators may also have an impact on observed mediators and vice-versa. Condition ii of assumption A-1 cannot be assumed to hold.
    - It is also not reasonable to suppose that 'measured and unmeasured inputs are independent in the no-treatment outcome', thus we cannot even use their method to test for the independence of 'increments' in unmeasured inputs and measured outputs in the linear model.


##Robustness to coefficient stability (consider using in interaction context)

###Oster, Unobservable selection and coefficient stability: theory and validation

>  a common heuristic for evaluating the robustness of a result to omitted variable bias concerns is to look at the sensitivity of the treatment effect to added controls. ...  The heuristic is informative only with the added assumption that the selection on observables variables is informative about the selection on unobservables.

> I formalize the link between coefficient stability and omitted variable bias through the proportional selection on observed and unobserved variables.  I develop implementation guidelines and suggest that robustness can be described by an identified set of the treatment effect.

>  key result ... small coefficient movements with small R-squared movements can imply more bias than large movements in both.

"I consider the following model: $Y = \beta X + W1 + W2$, where W1 is observed and W2 is unobserved and the coefficient of interest is $\beta$."

"...proportional selection assumption ... links the relationship between X and the observed variables to the relationship between X and the unobserved variables. This link invokes a degree of proportionality, denoted $\delta$."

! "Under this assumption I show that $\beta$ can be recovered from: (1) the coefficients on X with and without controls for observed variables; (2) the R-squared values from controlled and uncontrolled reg ressions; and (3) a value for $\delta$

{\itshape
DR: The latter must be difficult or impossible to attain in practice
}

"I redefine the model as $Y=\betaX+W_1+\tilde{W_2}+\epsilon$, where $\epsilon$ is orthogonal to X, W1 and W2.
... This unpacks \delta into ... (1) $\tilde{\delta}$, the proportional selection between W1 and the unobservables related to X $(\tilde{W_2})$

and (2) the R-squared of the full regression with controls for X, $W_1$ and $\tilde{W_2}$ which I denote $R_{max}$.


##Roy models, discussed in Cameron and Trivedi 16.7.1

Aka 'Tobit type 5', aka, 'switching regression with endogenous switching'.

> In this section we consider a model in which $y_2$ is observed for all individuals, but in only one of the two possible states.

> We observe whether $y_1^\ast$ is positive or negative

Cf, whether completed a hurdle like 'entered specialism'

> and observe exactly one of $y_2^\ast$ and $y_3^\ast$ according to

$y= y_2^\ast if y_1\^ast>0$ otherwise  $y= y_3^\ast$

Cf, earnings from not entering specialism, entering specialism (each may be a distinct function of institution and other attributes).

Model may be estimated in a standard way if we assume joint normal correlated errors, exogenous independent variables.

Previous prominent examples: Lee '78, union/nonunion wages; adds structure that 'join union if benefit exceeds cost', yields simplified reduced formation


## 'Selection Bias in a Controlled Experiment: The case of Moving to Opportunity' (Pinto, 2015)
nd in
... 4000+ families targeted, incentive to relocate from projects to better neighbourhoods.
- Easy to identifying impact of vouchers
- Challenge (here) is to asses impact of *neighborhoods* on outcomes.
		- Method here to decompose the TEOT into unambiguously interpreted effects. Method applicable to 'unordered choice models with categorical instrumental variables and multiple treatments
		- Finds significant causal effect on labour market outcomes

###Introduction
> The causal link between neighborhood characteristics and resident's outcomes has seldom been assessed.

Treatments:

- Control (no voucher)
- Experimental: could use voucher to lease in low-poverty neighborhood
- Section 8: COuld use voucher in any () neighborhood

Many papers evaluate the ITT or TOT effects of MOT.

- ITT: effect of being *offered* voucher
		- estimated as difference in average outcome of experimental vs control families
- TOT: effect for 'voucher compliers' (assuming no effect of simply being *offered* voucher on those who don't use it)
		- estimated as ITT/compliance rate

> [ITT and TOT] are the most useful parameters to investigate the effects of *offering* [EA] rent subsidising vouchers to families.

###Identification strategy brief

- Vouchers as IVs for choice among 3 neighborhood alternatives (no relocate, relocate bad, relocate good)
- Neighborhood causal effects as difference in counterfactual outcomes among 3 categories

Challenge "MTO vouchers are insufficient to identify the expected outcomes for all possible counterfactual relocation decisions"

>  compliance with the terms of the program was highly selective [Clampet-Lundquist and M, 08]


- Solution: Uses theory Mand 'tools of causal inference. Invokes SARP

- To identify 'set of counterfactual relocation choices that are economically justifiable' (??)

    - Extends Kling WA, '07
    -  explores "Causal Bayesian Networks"

Identifying assumption: "the overall quality of the neighborhood is not directly caused by the unobserved family variables even though neighborhood quality correlates with these unobserved family variables due to network sorting"

*Further discussion in: Mediators_lit_Pinto_etc.lyx/.pdf*



# Specific relevance: Med school and DUO admissions, Netherlands, descriptives


##Schripsema et al, Selection and study performance: comparing three admission processes within one medical school.

Recent data from Groningen. Describes admissions process in broad terms, explaining sequence of the new system. Explains one process of ‘decentralised’ admission. Evidence about the academic and success (1 year on)

- Pre-university GPA best predicts later performance in medical school.

- Lottery-admitted students who had not participated in the voluntary multifaceted selection process showed the lowest performance. Students who were accepted in this selection process outperformed their rejected peers in terms of interpersonal, collaboration and communication skills,reflection, ethical decision making and professional behaviour.

- For academic performance, participation in a time-consuming voluntary selection process seems to be more predictive than acceptance in this process.

##Urlings-Strop et al, Selected medical students achieve better than lottery-admitted students during clerkships

> The medical curriculum consists of a 4-year (168-week) pre-clinical phase followed by a 2-year (84-week) clinical phase. The clinical phase consists of two parts which involve a fixed sequence of clinical rotations. A period of 15 weeks of general clinical training precedes 69 weeks of discipline-specific clerkships. The general clinical training includes 4 weeks of introduction followed by three short clerkships in internal medicine, surgery and paediatrics of 4, 4 and 3 weeks, respectively.

> The durations of the 10 clerkships on which performance is graded are 8, 8, 3, 5, 5, 5, 3, 3, 3 and 4 weeks, respectively
Education and the Labor market in the Netherlands

- *DR:* Confusing, what do these durations mean?


-------------------------------------------------

[@canton2005demand],[@salerno2004rapid]

?Evaluating the Cost of Conscription in the Netherlands, G Imbens… - Journal of Business & Economic Statistics, 1995 - JSTOR <span>\[</span>probably not involving random assignment<span>\]</span>

Semeijn et al “The Role of Education in Selection and Allocation in the Labour Market: An Empirical Study in the Medical Field”


Returns to medical school, implications
---------------------------------------

?Previously anticipated surplus of doctors:https://www.aamc.org/download/153708/data/charts1982to2011.pdf

Recent restrictions on internationally trained doctors Notes:http://www.cdc.gov/nchs/data/databriefs/db13.pdf

Misc quotes and motivation to incorporate in
============================================

\`\`Altonji et al. (2012) review the literature and conclude that ?there is a long way to go on the road to credible measures of the payoffs to fields of study?. (Mogstad)

> We therefore avoid the problem of non-response bias in previous studies relying on survey data. Hamermesh and Donald (2008) show that non-response bias can lead to misleading conclusions about the payoffs  to post-secondary education. (Mogstad)

#Mostly Harmless Econometrics (Angrist and Pischke)


##Bad control  @mediators

> some variables are bad controls and should not be included in a regression model even when their inclusion might be expected to change the short regression coefficients. Bad controls are variables that are themselves outcome variables in the notational experiment at hand. That is, bad controls might just as well be dependent variables too."

– They could also be interpreted as endogenous variables.

Example of looking at a regression of wages in schooling, controlling for college degree completion:

> Once we acknowledge the fact that college affects occupation, comparison of wages by college degree status within occupation are no longer apples to apples, even if college degree completion is r andomly assigned."

– The question here was whether to control for the category of occupation, not the college degree.

> It is also incorrect to say that the conditional comparison captures the part of the effect of college that is 'not explained by occupation' ... so we would do better to control only for variables that are not themselves caused by education."


##Discussion of matching (vs regression, with binary treatment, heterogeneous effects)

> the matching estimand is typically a particular weighted average of contrasts or comparisons across cells defined by covariates.

> The Angrist (1998) matching estimator simply replaces $\delta_x$ by the sample veteran-non-veteran earnings difference for each combination of covariates, and then combines these in a weighted average using the empirical distribution of covariates among veterans.  Note also that we can just as easily construct the unconditional average treatment effect… which is the expectation of $\delta_X$ using the marginal distribution of $X_i$ instead of the distribution among the treated

I.e., match on X's, for each X take (mean) of difference (treated vs untreated) in Y, sum these weighting each by either

- ATEoT: Share of the treated with that X
- ATE: Overall share with that X

(Note that the validity and unbiasedness of these depends on the conditional independence assumption (CIA).)


***
*Aside on matching efficiency:*

> Footnote 19: "with continuous covariates, exact matching is impossible and some sort of approximation is required, a fact that leads to bias."

> Abadie and Imbens (2008) have recently shown that a regression-based bias correction can eliminate the (asymptotic) bias from imperfect matches.

***

Analogy between regression and matching estimates:

>in particular matching uses the distribution of covariates among the treated to weight covariate-specific estimates into an estimate of the effect of treatment on the treated, while regression produces a variance-weighted average of these effects."

– I think this gives a better sense of the advantage of matching (or a weighted regression?) estimators in these contexts; it is easier to interpret the weights and what exactly is the estimate being stated.

> … The regression estimand weights each covariate-specific treatment by [the probability of each combination of covariates multiplied by a measure of the variance, that is the product of the probability of this covariate value given the treatment is one multiplied by one minus this probability.]

> The treatment-on-the-treated estimand puts the most weight on covariate cells containing those who are most likely to be treated. [They mean the matching estimator here] in contrast, regression [fully saturated, categorical variables only] puts the most weight on covariate cells where the conditional variance of treatment status is largest.

> We should expect an efficient estimator to give the most weight to cells where the common treatment effect is estimated most precisely. With homoskedastic residuals, the most precise treatment effects come from cells where the probability of treatment equals one half.

– Intuition: if we don't observe much variation in the treatment, then clearly our estimates there will not be very precise, as there will be few observations in one of the two cells, treated or untreated.

> Importantly neither the [saturated] regression nor the covariate matching estimands give any weight to covariate cells that do not contain a both treated and control observations.

Extending this to continuous and ordered regressions .. matrix-weighted averages are difficult to interpret..



References  {#references .unnumbered}
===========

---

#Most easily identified: ‘Net impact of winning first-choice institution, for the winners’
- No level I issues with identification (but see level II issues)

#Level I issues

##A. Channel of effect issues
1. ‘Attending institution’ versus ‘attending course’ margins
2. ‘Academic completion’ margin vs ‘conditional on completion’ margin
3. Specialisation margin vs success conditional on specialisation margin
4. Location of institution versus other impacts of institution
5. etc.

- These issue are relevant to the questions ‘where does the gain from winning institution come from?’, and ‘what is the impact (for the winners) of the attributes of the institution’ etc.
- Literature: Roy model, Heckman et al on margins of effects, Pinto

##B. Heterogeneity of effect, choice of institution, and ‘comparing effects’ issues
(In comparing gains to winners choosing institution A vs B, or males vs females)

1. they will have different *first and* second choices,
2. and different unobservable characteristics, and different potential returns to each institution

- Relevant to the questions ‘Which institutions add more value to the average person?,’ ‘Do men or women gain more from particular institutions?’, etc.
- Literature: Kirkeboen, Leuven and Mogstad


#Level II issues
##A. Choice of income measures, life-cycle income patterns, etc.
##B. Validity of instrument
##C. Generalisability of estimated effects and context

- Relevant to nearly all of our questions
- Vast literature on these issues (E.g., Bhuller et al), Machin…

#Excerpts on weighting (some of this repeats  material above)

**I. From Deming et al (AER, 2014); they used 2sls; lottery chances of winning varied by chosen school and by 'priority group':**

In most specifications, we use the lottery assignment as an instrumental variable (IV) for enrollment in a student’s first-choice school in the fall of 2002. This results in the following two-stage least squares (2SLS) speci cation with enrollment Eij as the endogenous variable in the first s tage:

...

    Since some students who lost the lottery still managed to enroll in their rst choice, these estimates are local average treatment effects (LATEs) for students who comply with their lottery status (Angrist, Imbens, and Rubin 1996). Lottery xed effects Γj are necessary to ensure that the ex ante probability of admission to a rst-choice school does not differ between lottery winners and losers (Rouse 1998). In equation (3), δ gives the weighted average of outcome differences summed over each individual lottery, with weights equal to N × [p(1 − p)] where N is the number of applicants and p is the probability of admission (Cullen, Jacob, and Levitt 2006).

**II. From Cullen et al (2006, Ecta) ... they report OLS ITT effects of winning the lottery**

    In this specification, the δ coefficient is a weighted average of the δj ’s  for the various lotteries, with the weight for lottery j equal to (Nj Pj (1 − Pj ))/( j Nj Pj (1 − Pj )), where Nj is the number of students entered in lottery j and Pj is the proportion of students entered in lottery j who win the lottery. Holding the likelihood of winning constant, weights are proportional to the number of students in the lottery. The closer a lottery is to having half the applicants win, the more weight it receives.

**III. Leuven et al, (2013, JHE).**

I think their statement below is wrong -- it is not the LATE for compliers; as I keep saying, and the above seems to confirm, if treatment effects are weighted heterogenous and the heterogeneity is not orthogonal to the probabilities of treatment, th ey are picking up something else, where the TE for groups with probabilities of treatment  closer to one half ar e more highly weighted in the estimate.
The approach adopted in this paper allows us to identify a local average treatment effect (LATE, Imbens and Angrist, 1994). If the effect on applicants is homogeneous, it is equal to the average treatment effect on the treated (ATT). In that case we are able to answer the question what the health outcomes of those who attended medical school would have been if they would not have attended medical school. If treatment effects are heterogeneous, the effect that we estimate is the average treatment effect on the compliers, which is the group of people that attend medical school when they win the first lottery and do not attend medical school if they lose the first lottery.13

The research design does not inform us about the average effect (ATE) of attending medical school for a random sample from the entire population. The reason is that the population of applicants for medical school is not a random draw from the population.

Leuven et al do some things that seem possibly relevant. Table 2 notes  "The estimates in column (2) are the sample weighted averages of the estimates from 2SLS regressions stratified by lottery weight and year. (I'm not sure what 'stratified' means here.) Incidentally, they do use inverse probability weighting (on probability responding to the survey) to to deal with nonresponse, however; I'm not familiar with this method -- see footnote  16.

**IV. Ketel et al:**

They basically ignore this issue. They do IV in the context of the same  weighted lottery.



##Papers that use some sort of weighting (I think)

Angrist, Joshua D., Parag A. Pathak, and Christopher R. Walters. "Explaining charter school effectiveness." American Economic Journal: Applied Economics 5.4 (2013): 1-27.

> "Complier means for each component of X i are estimated using the kappa-weighting procedure described in Abadie (2003)"


# Wooldridge chapter 21: Estimating ATE
ATE APE
