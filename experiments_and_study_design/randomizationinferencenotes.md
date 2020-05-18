I think the 'randomization inference' I was referring to simply applies the above logic/procedure to inference on the actual data (post-experiment). Suppose there was no effect of the treatment, so that the data merely represents (blocked) random assignment of outcomes to be labeled 'treated' and 'control.' Considering all possible draws, how likely would it be to observe a difference as large or larger than the one we observe? This seems to me very similar to a 'bootstrap' procedure.

> randomization inference treats outcomes as fixed and the distribution of the estimate arising from the random assignment of the treatment. This method allows us to conduct valid inference on a finite sample without relying on asymptotic properties. Moreover, the exact test is uniformly more powerful and asymptotically identical to the standard t-test with a simple comparison of two groups (Lehmann and Romano 2006).

> Randomization inference can also be conducted ex-post. The method, in general, considers a test statistic and a sharp null hypothesis. The test statistic is evaluated at all possible counter-factual assignments that could have been realized by the experiment. A sharp null hypothesis then specifies exactly what the treatment effect is for every experimental unit and allows counter-factual potential outcomes to be computed for every unit. It is com-only the case that the sharp null hypothesizes exactly zero effect of treatment for every unit. Under this null both potential outcomes are identical for each unit, so that outcomes would be the same under any treatment assignment. In a matched pairs experiment with N/2, pairs there would be 2N/2 possible assignments and the distribution of a test statistic can be computed over this distribution. Inference would then be conducted by compar- ing the value of the statistic to the proportion of more extreme values in the underlying distribution. --Barrios


> in essence, the sampling based approach considers the treatment assignments to be fixed, while the outcomes are random. Inference is based on the idea that the subjects are a random sample from a much larger population. In contrast, the randomization-based approach takes the subject’s potential outcomes (that is, the outcomes they would have had in each possible treatment regime) as fixed, and considers the assignment of subjects to treatments as random

--Athey and Imbens "Econometrics of Randomized Experiments" ... gives some examples of estimating average and quantile treatment effects and testing against sharp null hypotheses using this framework; however, confidence intervals seems to still require the notion of a super-population