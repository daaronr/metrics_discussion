%Notes on Mostly Harmless Econometrics, especially for NL Education paper


> "The omitted variable bias formula is a mechanical link between coefficient vectors that applies to short and long regressions whether or not the longer regression is causal"

> Footnote 10 gives the multivariate generalization of the omitted variable bias formula.


##Bad control  @ec831 @teaching @mediators

> some variables are bad controls and should not be included in a regression model even when their inclusion might be expected to change the short regression coefficients. Bad controls are variables that are themselves outcome variables in the notational experiment at hand. That is, bad controls might just as well be dependent variables too."

– They could also be interpreted as endogenous variables.

Example of looking at a regression of wages in schooling, controlling for college degree completion:

> Once we acknowledge the fact that college affects occupation, comparison of wages by college degree status within occupation are no longer apples to apples, even if college degree completion is randomly assigned."

– The question here was whether to control for the category of occupation, not the college degree.

> It is also incorrect to say that the conditional comparison captures the part of the effect of college that is 'not explained by occupation' ... so we would do better to control only for variables that are not themselves caused by education."


##Discussion of matching (vs regression, with binary treatment, heterogeneous effects)

> the matching estimand is typically a particular weighted average of contrasts or comparisons across cells defined by covariates.

> The Angrist (1998) matching estimator simply replaces $\delta_x$ by the sample veteran-non-veteran earnings difference for each combination of covariates, and then combines these in a weighted average using the empirical distribution of covariates among veterans.  Note also that we can just as easily construct the unconditional average treatment effect… which is the expectation of $\delta_X$ using the marginal distribution of X_i instead of the distribution among the treated

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

– I think this gives a better sense of the advantage of matching estimators in these contexts; it is easier to interpret the weights and what exactly is the estimate being stated.

> … The regression estimand weights each covariate-specific treatment by [the probability of each combination of covariates multiplied by a measure of the variance, that is the product of the probability of this covariate value given the treatment is one multiplied by one minus this probability.]

> The treatment-on-the-treated estimand puts the most weight on covariate cells containing those who are most likely to be treated. [They mean the matching estimator here] in contrast, regression [fully saturated, categorical variables only] puts the most weight on covariate cells where the conditional variance of treatment status is largest.

> We should expect an efficient estimator to give the most weight to cells where the common treatment effect is estimated most precisely. With homoskedastic residuals, the most precise treatment effects come from cells where the probability of treatment equals one half.

– Intuition: if we don't observe much variation in the treatment, then clearly our estimates there will not be very precise, as there will be few observations in one of the two cells, treated or untreated.

> Importantly neither the [saturated] regression nor the covariate matching estimands give any weight to covariate cells that do not contain a both treated and control observations.

Extending this to continuous and ordered regressions:

>… Regression coefficients have an 'average derivative' interpretation. In multivariate regression models this interpretation is unfortunately complicated by the fact that the OLS slope vector is a matrix-weighted average of the gradient of the CEF. Matrix-weighted averages are difficult to interpret except in special cases (see Chamberlain and lemur, 1976).

> An important special case when the average derivative property is relatively straightforward is in regression models for an ordered or continuous treatment with a saturated model for covariates.

In Angrist and Krueger (1999), the average weighting function "turn out to be a reasonably smooth symmetric function of T centered at the mode of S_i."

> [General formula] in other words, the regression of Y_i on S_i [yields] the (unweighted!) population average derivative,…, When S_i is normally distributed. [Here S_i is the treatment intensity.]

> And in our empirical experience, the average derivative (also called 'marginal effects') constructed from parametric nonlinear models for limited dependent variables ... Are usually indistinguishable from the corresponding regression coefficients, regardless of distribution of the regressors.

