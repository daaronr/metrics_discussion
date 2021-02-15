# Tipton: experimental design for generalisability


Speaker: Elizabeth Tipton (Northwestern University)
- Title: "Will this Intervention Work in this Population? Designing Randomized Trials for Generalization"
- Discussant: Andrew Gelman (Columbia)

A tool: https://www.thegeneralizer.org/

Sample ATE ≠ Population ATE

Clearly if treatment impacts vary and the sample differs in distribution
on moderators underlying this variation:
PATE ≠ SATE

This is not simply academic:
- This bias can be on the same order as bias from non-random
treatment assignment.1 (Bell, Orton, Stuart, '16)

Previous work uses post-hoc methods reweighting ex-post: Propensity score, bounding approaches
.. limitations

Problems -- lack of coverage, particularly selectivity, nonresponse and attrition

Education researchers seemed to target particular schools, geographically, and in size of school district

Consider sources of TE heterogeneity


  ## What would statisticians like?

If the goal is to estimate a PATE, researchers would define clearly:
- A target population;
- Eligibility criteria for their study;
- Estimands of interest (and priorities);
- Resource constraints and recruitment strategies;
- Discussion of possible sources of treatment effect heterogeneity.

## Obstacles ... What do we need?

1. Empirical work that convinces those planning (and funding) trials that
generalization is a real problem.

2. Understand the constraints affecting this research:

-Data: Target population data is messy
- Knowledge: No training in populations, demography, or sampling
- Time: Proposals require sample (before funding)
- Money: Recruitment is expensive

Hard to convince people that generalizability and heterogeneity is a real problem

Resource and time constraints

##

In both design-based and model-based sampling, stratification is an
important tool for reducing variance / increasing similarity.

But now we seek such balance on a large set of covariates, those that
may explain variation in treatment impacts:
• We aren’t sure in advance which variables explain variation in
treatment impacts;
• We’d like good balance between the sample and population, even
with small samples.

We want a sample selection strategy such that:
• The sample that results is closer to being a “miniature” of the
population
• On the set of covariates the explain variation in treatment impacts.

This last condition is the Sampling Ignorability condition in
generalization:

##

Constraints

The total number of strata (H) is limited by three factors:

1. Sample sizes are small (typically 20 - 60).

2. Each additional stratum creates an additional constraint for those
recruiting sites into the study. This creates additional costs in terms
of both time, personnel, and money.

##

k-means cluster analysis

We have p covariates, but we’d like H strata (H much less thab p).

The goal is for these strata to be close to homogenous on these covariates.

Cluster-analysis (Tipton) is one approach:

- k-means with Gower’s distance (when there are different covariate types) and standardized covariates.

- Results in strata of different sizes, some more homogenous than others.

In special cases, propensity scores can also be used.

##

The total sample n can then be selected from these strata using:
- Proportional allocation
- Neyman allocation

Within each stratum, sites can be selected in a variety of ways:
- Ordered randomly;
- Ordered in terms of Euclidean distance from the stratum average vector;
- Selected based on convenience.

(Honestly, at this stage: Any way is better than current default.)

##

Standardised effect size differences ... usually standardised wrt the sample rather than the population (which is a mistake)

If we have homogenous samples we don't have power to find mediators

##

Augmentation strategy

For the PATE, the ideal is to recruit proportional to the population (e.g., strata). For moderators, the ideal is to recruit the extremes.

These are at odds.

An compromise is to recruit for the PATE for *most* of the sample, but augment this with some extremes.

## Gelman

MlM and ML are the tools we need to consider interactions and give recommendations; regression doesn't work for this because XXX

'ATE doesn't mean anything in isolation'

## Tipton response

- big disconnect from super-advanced statistical thinking and writing and policy work that ignores everything and is extremely crude
