%Vivalt: How much can we generalise from Impact evaluations?


Reviews Bayesian methods and meta-analysis.

Considers how to account for and measure inter-study heterogeneity
... and what can be inferred from meta-analysing studies with distinct interventions.

Detailed discussion of the meta-analysis procedure using AidGrade methods/data

# Intro

Results are typically reported very narrowly:

> If researchers knew all the factors that could be affecting results and could fully explain heterogeneity in treatment effects, and if this information were included in policy reports, the dispersion of studies’ results would not be an issue. However, even much more basic information is typically not provided. For example, there is not room in the World Development Report, the World Bank’s flagship annual publication that is widely circulated among policymakers, for a detailed description of each study, nor do these reports typically include confidence intervals or similar information.1 Nor is this issue limited to development; at the present time of writing, 1World Development Reports from 2010-2016 were checked for standard error information and only 8 cases were found out of thousands of cited papers. the plain language two-pagers the Campbell Collaboration publishes for policymakers also provide limited contextual information and no standard errors.2 Details about studies’ implementation and other factors are frequently sparse not just in policy re- ports, but also in the research papers themselves: of the studies considered in this paper, 1 in 5 did not even make clear the basic detail of what type of organization (government, non-profit, private sector, researcher or other) implemented the pro- gram, and in more than 1 in 4 papers it was not clear how much time had elapsed between the``` beginning of the intervention and the collection of midline or endline data.


Main contribution, metrics to consider what we can infer in general:

>...tie heterogeneity measures to generalizability ... help to address several policy-relevant questions, such as: 1) given a set of results on the effect of a particular intervention (e.g. conditional cash transfers) on a particular outcome (e.g. school enrollment rates), what is the likelihood that we would accurately predict the sign of the true effect of a similar study in another context?; 2) how well can we predict the magnitude of that true effect?


Gelman framework

> Type S errors are the probability of a significant result having the incorrect sign
> ...Type M errors represent the magnitude by which a significant point estimate differs from the true value it seeks to estimate.

..."a similar approach can be leveraged to consider generalizability to another setting."



...


> the problem that very few impact evaluations on an intervention turned out to have outcome variables in common.

- DR: This also may be an issue for some charitable giving experiments.

"Testing Search Sources": used a broad list of engines

> Ultimately, Google Scholar and the online databases of J-PAL, IPA, CEGA and 3ie, along with EBSCO/PubMed for health-related interventions, were selected ...SciVerse was also used.

##3.3 screening

> The screening criteria were very inclusive overall. ...hopes that the data collected can be re-used by researchers who want to focus on a di↵erent subset of papers. ... vast resources are typically devoted to a meta-analysis, but if another team of researchers thinks a different set of papers should be used, they will have  scour the literature and recreate the data from scratch. AidGrade instead strives to cover the superset of all impact evaluations

> re-screening was allowed at the point of doing the analysis.

They had a big org with volunteers to screen titles and abstracts

IIF should do similarly

3.4 Data Extraction
3.4.1 Coding Manual and Data Extraction Forms Development

apart from a field specifying the topic, 85 fields were coded for each paper, including 13 fields with identifying information (author, publication year, program name, etc.); these were converted to 89 variables as described shortly.

Common variables included ID, methodological information (identification strategy, randomisation technique, blinded); intevention nature (location, duration, institution implementing, sample characteristics, whether things like attrition and costs were reported,  finally the results themselves.
49 fields were reserved for simply inputting the results, since di↵erent papers could report results in di↵erent ways

> Using broader outcome definitions would allow us to include more papers but could leave us open to criticism that we are not capturing “true” heterogeneity in results for a given outcome or at least obscure the source of the heterogeneity, as some of the heterogeneity could stem from the di↵erent outcome measures used.


> As previously described, an- other tier could be added to the hierarchical model so that information from a given outcome variable could be used to inform estimates of a similar outcome, explicitly estimating the pooling factor across di↵erent narrowly-defined intervention-outcome combinations, however, for simplicity this is not currently our approach.

- I want to know about this

Only able to group by *broad* intervention categories, as for more detailed versions "there would then not be many papers in an intervention-outcome combination"

With multiple specifications, a set of 'coding conventions':
> focused on those results least likely to have been influenced by author choices: ... fewest controls, apart from fixed e↵ects. ... collect the findings obtained under the authors’ preferred methodology; where ... unclear, follow the internal preference ordering of prioritizing randomized controlled trials, followed by regression discontinuity designs and di↵erences-in- di↵erences, followed by matching, and to collect multiple sets of results when they were unclear on which to include.

...

Table 3: Descriptive Statistics: Distribution of Narrow Outcomes
Intervention, Number of Outcomes, Mean Papers per Outcome, Max papers per outcome

...

First, we use the most widely-used quality assessment measure, the Jadad scale (Jadad et al., 1996). The Jadad scale asks whether the study was randomized, double- blind, and whether there was a description of withdrawals and dropouts. A paper gets one point for having each of these characteristics; in addition, a point is added if the method of randomization was appropriate, subtracted if the method is inappropriate, and similarly added if the blinding method was appropriate and subtracted if inappropriate. This results in a 0-5 point scale. Given that the kinds of interventions being tested are not typically suited to blinding, we consider all those papers scoring at least a 3 to be high quality.

- Very helpful; she can test the relevance of these measures, how much bias or variance they produce, how reliable a measure of true effects
