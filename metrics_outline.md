 # Econometrics, statistics, and data science: Reinstein notes with a Micro, Behavioural, and Experimental focus

# Notes introduction

- Focus on the practical tools I use and the challenges I (David Reinstein) face

Microeconomics, behavioral economics, focus on charitable giving and 'returns to education' type of straightforward problems. (Limited to no focus on structural approaches.)

- Where we can *add value* to real econometric practice??

\

Data:

- Observational (esp. web-scraped and API data and national surveys/admin data}

- Experimental: esp. where with multiple crossed arms, and where the 'cleanest design' may not be possible

\

Assume familiarity with most basic statistical concepts like 'bias', 'consistency', and 'null hypothesis testing.' However, I will focus on some concepts that seem to often be misunderstood and mis-applied.

<!--

Folders:
causal_inference_general_notes/
experimetrics_expt_design/
heterog_TE_moderators/
mediation/
meta_anal_and_open_science/
misc_tools/
ml-and-mlreading-group/
mostly-harmless-replication_and_notes/
multilevel-models/
sample_selection/
-->


## Conceptual


### Bayesian vs. frequentist approaches

Folder: bayesian
Notes: [bayes_notes](bayesian/bayes_notes.Rmd)

### Causal vs. descriptive; 'treatment effects' and the potential outcomes causal model

-  **DAGs and Potential outcomes**

### Theory, restrictions, and 'structural vs reduced form'

## Getting, cleaning and using data

### Data: What/why/where/how

### Good coding practices

-  **Organizing a project**

-  **Dynamic documents (esp Rmd/bookdown)**

### New tools and approaches to data (esp 'tidyverse')

- **Style and consistency**
    - Indenting, snake-case,etc

-  **Using functions, variable lists, etc., for clean, concise, readable code**

### Data sharing and integrity

## Control strategies and prediction; Machine Learning approaches

'Identification' of causal effects with a control strategy not credible	Identification	Essentially a 'control strategy' is "control for all  or most of the reasonable determinants of the independent variable so as to make the  remaining unobservable component very small, minimizing the potential for bias in the coefficient of interest". All of the controls must still be exogenous, otherwise this itself can lead to a bias. There is some discussion of how to validate this approach; see, e.g., [@oster2019unobservable].

### Machine Learning (statistical learning): Lasso, Ridge, and more

### Limitations to inference from learning approaches

## Basic regression and statistical inference: Common mistakes and issues

*Note: These are organized in an Airtable database [here](https://airtable.com/shr2NGHUmhW1hADGf). Many of these are also covered in my 'Research and Writing' book*

Peer effects: Self-selection, Common environment, simultaneity/reflection (Manski paper)	Identification

Random effects estimators show a lack of robustness	Specification	Clustering SE  is more standard practice


OLS/IV estimators not 'mean effect' in presence of heterogeneity

Power calculations/underpowered

Selection bias due to attrition

Selection bias due to missing variables -- impute these as a solution

Signs of p-hacking and specification-hunting

Weak diagnostic/identification tests

Dropping zeroes in a "loglinear" model is problematic
Random effects estimators show a lack of robustness


Dropping zeroes in a "loglinear" model is problematic

Random effects estimators show a lack of robustness

With heterogeneity the simple OLS estimator is not the 'mean effect'

P_augmented may *overstate* type-1 error rate

Impact size from regression of "log 1+gift amount"

Lagged dependent variable and fixed effects --> 'Nickel bias'

Peer effects: Self-selection, Common environment, simultaneity/reflection (Manski paper)

Weak IV bias

Bias from selecting instruments and estimating using the same data



### "Bad control" ("colliders")

Endogenous control: Are the control variables you use endogenous? (E.g., because FDI may itself affect GDP per capita)


### Choices of lhs and rhs variables

- Missing data
- Choice of control variables and interactions
- Which outcome variable/variables

### Functional form

- Logs and exponentials
- Nonlinear modeling (and interpreting coefficients)


-  **'Testing for nonlinear terms'**

Quadratic regressions are not diagnostic regarding u-shapedness: 	Simonsohn18

http://datacolada.org/62

### OLS and heterogeneity

- OLS does *not* identify the ATE

http://blogs.worldbank.org/impactevaluations/your-go-regression-specification-biased-here-s-simple-way-fix-it?cid=SHR_BlogSiteShare_XX_EXT


- Modeling heterogeneity: the limits of Quantile re regression

### "Null effects"


"While the classical statistical framework is not terribly clear about when one should ""accept"" a null hypothesis, we clearly should distinguish strong evidence for a small or zero effect from the evidence and consequent imprecise estimates. If our technique and identification strategy is valid, and we find estimates with confidence intervals closely down around zero, we may have some confidence that any effect, if it exists, is small, at least in this context. To more robustly assert a ""zero or minimal effect"" one would want to find these closely bounded around zero under a variety of conditions for generalizability.

In general it is important to distinguish a lack of statistical power from a “tight” and informative null result; essentially by considering confidence intervals (or Bayesian credible intervals). See, e.g., Harms and Lakens (2018), “Making 'null effects' informative: statistical techniques and inferential frameworks”."	Harms-lakens-18

-  **Confidence intervals and Bayesian credible intervals**

-  **Comparing relative parameters**

E.g., "the treatment had a heterogeneous effect... we see a statistically significant positive effect for women but not for men".   This doesn't cut it: we need to see a *statistical test* for the *difference* in these effects. (And also see caveat about multiple hypothesis testing and ex-post fishing).


### Multiple hypothesis testing (MHT)

See [@verkaik2016]

### Interaction terms and pitfalls

-  **'Moderators' Confusion with nonlinearity**

Moderators: Heterogeneity mixed with nonlinearity/corners

In the presence of nonlinearity, e.g., diminishing returns, if outcome  'starts' at a higher level for one group (e.g., women), it is hard to disentangle a heterogeneous response to the treatment from 'the diminishing returns kicking in'.  Related to https://datacolada.org/57 [57] Interactions in Logit Regressions: Why Positive May Mean Negative

-  **MHT**

### Choice of test statistics (including nonparametric)

(Or get to this in the experimetrics section)

### How to display and write about regression results and tests

### Bayesian interpretations of results

## LDV and discrete choice modeling

## Robustness and diagnostics, with integrity

### (How) can diagnostic tests make sense? Where is the burden of proof?

Where a particular assumption is critical to identification and inference ...Failure to reject the violation of an assumptionis not sufficient to give us confidence that it is satisfied and the results are credible. At several points the authors cite insignificant statistical tests as evidence in support of a substantive model, or of evidence that they do not need to worry about certain confounds. Although the problem of induction is difficult, I find this approach inadequate. Where a negative finding is given as an important result, the authors should also show that their parameter estimate is tightly bounded around zero. Where it is cited as evidence they can ignore a confound, they should provide evidence that they can statistically bound that effect is small enough that it should not reasonably cause an issue (e.g., as using Lee or McNemar bounds for selective attrition/hurdles).


### Estimating standard errors

### Sensitivity analysis: Interactive presentation


## IV and its many issues

### Instrument validity

- Exogeneity vs. exclusion
- Very hard to 'powerfully test'

IV not credible	Identification	Note that for an instrument to be valid it needs to both be exogenously determined (i.e., not selected in a way related to the outcome of interest) and to also not have a *direct* effect on the outcome (only an indirect effect through the endogenous variable

### Heterogeneity and LATE

### Weak instruments, other issues

### Reference to the use of IV in experiments/mediation

## Causal pathways: mediation, hurdles, etc.

### Mediation modeling


### 'Corner solution' or hurdle variables and 'Conditional on Positive

"Conditional on positive"/"intensive margin" analysis ignores selection


"Conditional on positive"/"intensive margin" analysis ignores selection 	Identification	See Angrist and Pischke on "Good CoP, bad CoP".  See also bounding approaches such as [@Lee2018]	AngristJ.D.2008a,



## Causal pathways: mediation, hurdles, etc.

### Mediation modeling

### 'Corner solution' or hurdle variables and 'Conditional on Positive'

## Causal pathways: mediation, hurdles, etc.

### Mediation modeling and its massive limitations

### 'Corner solution' or hurdle variables and 'Conditional on Positive

-  **Bounding approaches (Lee, Manski, etc)**

## Other paths to observational identification

### Fixed effects and differencing

### DiD

FE/DiD does not rule out a correlated dynamic unobservable, causing a bias

### RD

### Time-series-ish panel approaches to micro

-  **Lagged dependent variable and fixed effects --> 'Nickel bias'**

## (Ex-ante) Power calculations

### What sort of 'power calculations' make sense, and what is the point?

-  **The 'harm to science' from running underpowered studies**

<!--
> "One worries about underpowered tests. Your result (may have)  relatively large effect sizes that are still insignificant, which makes me wonder whether it has low power. Low powered studies undermine the reliability of our results.

> Button et al (2013_ point out that running lower-powered studies reduces the positive predicted value—the probability that a “pos- itive” research finding reflects a true effect—of a typical study reported to find a statistically significant result. In combination with publication bias, this could lead a large rate of type-1 error in our body of scientific knowledge (false-positive cases, where the true effect was null and the authors had a very “lucky” draw). True non-null effects will be underrepresented, as underpowered tests will too-often fail to detect (and publish) these. Furthermore, in both cases (true null, true non-null), underpowered tests will be far more likely to find a significant result when they have a random draw that estimates an effect size substantially larger than the true effect size. Thus, the published evidence base will tend to overstate the size of effects."	verkaik2016, metzger2015
-->

### Power calculations without real data

### Power calculations using prior data


## (Experimental) Study design: Identifying meaningful and useful (causal) relationships and parameters

### Why run an experiment or study?

- Sugden and Sitzia critique here, give more motivation

### Causal channels and identification

- Ruling out alternative hypotheses, etc

### Types of experiments, 'demand effects' and more artifacts of artifical setups

### Generalizability (and heterogeneity)


## (Experimental) Study design: Background and quantitative issues

### Pre-registration and Pre-analysis plans

- **The hazards of specification-searching**

### Sequential and adaptive designs


Needs to adjust significance tests for augmenting data/sequential analysis/peeking	Statistics/econometrics	new-statistics		sagarin_2014			http://www.paugmented.com/	resubmit_letterJpube.tex, http://andrewgelman.com/2014/02/13/stopping-rules-bayesian-analysis/

Yet ...


P_augmented may *overstate* type-1 error rate	Statistics/econometrics	response to referees, new-statistics	"
A process involving stopping ""whenever the nominal $p.0.5$"" and gathering more data otherwise (even rarely) must yield a type-1 error rate above 5\%. Even if the subsequent data suggested a ""one in a million chance of arising under the null"" the overall process yields a 5\%+ error rate. The NHST frequentist framework can not adjust ex-post to consider the ""likelihood of the null hypothesis"" given the observed data, in light of the shocking one-in-a-million result. While Bayesian approaches can address this, we are not highly familiar with these methods; however, we are willing to pursue this if you feel it is appropriate.

Considering the calculations in \ref{sagarin2014}, it is clear that $p_{augmented}$ should \textit{overstate} the type-1 error of the process if there is a positive probability that after an initial experiment attains p$<0.05$, more data is collected.  A headline $p<0.05$ does \textit{not} imply that this result will enter the published record. Referees may be skeptical of other parts of the design or framework or motivation. They may also choose to reject the paper specifically because of this issue; they believe the author would have continued collecting data had the result yielded $p>0.05$, thus they think it is better to demand more evidence or a more stringent critical value. Prompted by the referee, the author may collect more data even though $p<0.05$. Or, she may decide to collect more data even without a referee report/rejection demanding it, for various reasons (as we did after our Valentine's experiment).  Thus, we might imagine that there is some probability that after (e.g.) an initial experiment attaining p<0.05, more data is collected, implying that $p_{augmented}$ as calculated above overstates the type I error rate that would arise  from these practices. As referees and editors, we should be concerned about the status of knowledge as accepted by the profession, i.e., in published papers. If we recognize the possibility of data augmentation after any paper is rejected, it might be a better practice to require a significance standard substantially below $p=0.05$, in order to attain a type-1 error rate of 5% or less in our published corpus."

### Efficient assignment of treatments

(Links back to power analyses)

## 'Experimetrics' and measurement of treatment effects from RCTs

### Which error structure? Random effects?

### Randomization inference?

### Parametric and nonparametric tests of simple hypotheses

### Adjustments for exogenous (but non-random) treatment assignment

### IV in an experimental context to get at 'mediators'?

### Heterogeneity in an experimental context



## Making inferences from previous work; Meta-analysis, combining studies

### Publication bias

### Combining a few (your own) studies/estimates

### Full meta-analyses

- Models to address publication biases
