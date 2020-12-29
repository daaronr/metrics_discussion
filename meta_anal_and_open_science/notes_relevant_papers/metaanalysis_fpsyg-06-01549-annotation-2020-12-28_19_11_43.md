# Notes on: Daniel S. Quintana: From pre-registration to publication: a non-technical primer for conducting a meta-analysis to synthesize correlational data

Although they focus on 'correlational data', the insights are mostly relevant to a 'general meta-analytic process'



## Literature Search and Data Collection

### PRISMA and MARS standards, preregistration of meta-analyses

> meta-analysis protocols and pre-registration to improve transparency and help avoid unintended duplication

> Over half of the 25 journals that
> publish the most meta-analyses in psychology (Figure 2) recommend the use of the Preferred Reporting Items for Systematic Reviews and Meta-Analyses guidelines (PRISMA; Moher et al., 2009), or the related Meta-Analysis Reporting Standards (MARS; APA, 2008)

> pre-registration helps avoids bias by providing evidence of a priori analysis intentions. Like other types of empirical research, meta-analysis is susceptible to hypothesizing after the results are known, otherwise known as "HARKing” (Kerr, 1998)

<div class="marginnote">
Note however that it is difficult to verify when a meta-analysis was actually started, even privately. Thus, in this context, pre-registration partially depends on an honor and trust system.
</div>


> Study protocols can be submitted as preprints (e.g., PeerJ PrePrints, Open Science Framework, bioRxiv) or submitted as a peer-reviewed article to open access journals that accept study protocols (e.g., BMC Psychology, Systematic Reviews). Meta-analyses can also be registered in the PROSPERO database

> reference lists of eligible studies can also be searched for eligible studies (i.e., snowballing)

\

**'PRISMA flow diagram**

> These search results need to be detailed in a PRIMSA flow diagram (Moher et al., 2009), which details the flow of information through all stages of the review. Thus, it is important to note how many studies were returned after using the specified search terms and how many of these studies were discarded, and for what reason. The search terms and strategy should be specific enough for a reader to reproduce the search. The date range of studies, along with the date (or date period) the search was conducted should also be provided.

\

**Report only zero-order correlations?**

> partialed out variables will likely vary from study-to-study. As a consequence, many meta-analyses exclude partial correlations from their analysis (e.g., Klassen and Tze, 2014; Jim et al., 2015; Slaughter et al., 2015). Thus, study authors should be contacted to provide missing data or zero-order correlations.

> There are more than 80 tools available to assess the quality and risk of bias in observational studies

## Analysis

>  As Pearson’s r is not normally distributed, these values are converted into Fisher's z scale

## Forest Plots

> The fixed effects model assumes that all studies are from a single common population, tested under similar conditions. For instance, a series of studies done in the same laboratory

> After performing the meta-analytic calculations, Fisher's z should be converted back to Pearson's r to for reporting the average correlation and 95% CI. Performing the analysis of the example data reveals a summary

\

**Considering 'true heterogeneity' in effect sizes**

> analysis we are interested in the true heterogeneity in effect sizes. Calculating the Q-statistic, which is the ratio of observed variation to within-study variance, can reveal how much of the overall heterogeneity can be attributed to true between-studies variation. The Q-statistic is a null hypothesis significance test (NHST) that evaluates the null hypothesis that all studies are examining the same effect

> Like any other NHST, however, a non-significant Q-statistic does not provide evidence that studies are homogeneous

> Q-statistic is prone to underestimating heterogeneity in small samples and overestimating for large samples (Higgins et al., 2003

> The related $I^2$ statistic is a percentage that represents the proportion of observed variation that can be attributed to the actual difference between studies, rather than within-study variance


> The two main advantages of I2, compared to the Q-statistic, are that it is not sensitive to the number of studies included and that CIs can also be calculated

> Meta-analyses comprising heterogeneous studies provide less weight to larger studies with smaller variance

> Baujat et al. (2002) have proposed a plot to identify studies that excessively contribute to heterogeneity and the overall result. The plot-s horizontal axis illustrates study heterogeneity whereas the vertical axis illustrates the influence of a study on the overall result.

> A closer look at the characteristics of these studies may reveal moderating variables that contribute to heterogeneity


> Forest plots visualize the effect sizes and CIs from the included studies


> The summary effect size is represented by the polygon at the bottom of the plot, with the width of the polygon representing the 95% CI


> Studies with larger squares have contributed more to the summary effect


## Publication Bias


**Funnel plots**


> illustrate the individual effect sizes on the horizontal axis and corresponding standard errors on the vertical axis

> The funnel lines are centered on the summary effect size, represented by the vertical line, and indicate the degree of spread that would be expected for a given level of standard error

> these points should be equivalently spread on both sides of the line (Figure 5


> if a significant positive effect were found for the summary effect size, for instance, the vertical line would be situated to the right of zero. Any study with a nonsignificant effect would lie around zero, thus if the funnel is uneven with more positively associated studies to the right of the line this provides evidence for publication bias. Figure

 > The trim and fill procedure imputes missing studies (hollow circles) to create a more symmetrical funnel plot (C)


## Data Interpretation and Reporting


> The rank correlation test (Begg and Mazumdar, 1994) evaluates if effect estimates and sampling variances for each study are related. A significant test (p < 0.05) is consistent with a nonsymmetrical funnel plot

> An alternative test that is better suited to smaller meta-analyses (<25 studies) is Egger's regression test (Egger et al., 1997)

> If there is evidence of publication bias, the trim and fill method can be used (Duval and Tweedie, 2000). This method, which assumes that funnel plot asymmetry is due to publication bias, adjusts a meta-analysis by imputing -missing” studies to increase funnel plot symmetry (Figure 5C). This updated meta-analysis with imputed studies should not be used to form conclusions - as these are not real studies

> a form of sensitivity analysis to assess the potential impact of these probable studies on the summary effect size.

> analysis reveals that age did not have a moderating effect [Q(1) = 1.43, p = 0.23]

- inappropriate conclusion from nhst, as noted before!

> If more than one set of data has been collected from the same study, the within-subject statistical dependency of these effect sizes should be accounted for due to issues of statistical dependency (Hunter and Schmidt)

> most straightforward procedure is to only collect one effect size per study using pre-specified criteria (e.g., Chalmers et al., 2014; Alvares et al., in press). Alternatively, effect sizes can be aggregated

> correlations. Robust variance estimation (RVE) can account for non-independent sizes without knowledge of within study correlations (Hedges et al., 2010

> An important point for moderator analysis is that results are not over-interpreted. For instance, performing a moderator analysis of the effect of gender may reveal a difference, however, there could other unidentified study characteristics that can better explain the moderating effects. In other words, moderator analysis does not specifically target a single variable, but rather, a set of studies that happen to share that variable

