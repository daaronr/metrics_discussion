


Search charitablegivingexperiments




1
1

2

C
3

4

E
5

FI
6

B
7

N
8

DR
9

TB


1


99+

FF



charitablegivingexperiments










r_and_datascience





7


Tip: Try  F to search this channel


gerhard  8:32 AM
https://blogs.worldbank.org/impactevaluations/edutech/impactevaluations/edutech/should-we-require-balance-t-tests-baseline-observables-randomized-experiments?cid=SHR_BLogEmailShare_XX_EXT

Impact EvaluationsImpact Evaluations
Should we require balance t-tests of baseline observables in randomized experiments?
I received an email recently from a major funder of impact evaluations who wanted my advice on the following question regarding testing baseline balance in randomized experiments: Should we continue to ask our grantees to do t-tests and f-tests to assess the differences in the variables in the balance tables during the baseline?
Jun 26th, 2017 (135 kB)
https://blogs.worldbank.org/impactevaluations/edutech/impactevaluations/edutech/files/styles/large/public/default_images/social-sharing-default.png?itok=PZFxgPBO

gerhard  11:41 AM
https://bookdown.org/yihui/rmarkdown/

bookdown.orgbookdown.org
R Markdown: The Definitive Guide
The first official book authored by the core R Markdown developers that provides a comprehensive and accurate reference to the R Markdown ecosystem. With R Markdown, you can easily create reproducible data analysis reports, presentations, dashboards, interactive applications, books, dissertations, websites, and journal articles, while enjoying the simplicity of Markdown and the great power of R and other languages.
:+1:
1


daaronr  3:22 PM
@gerhard the ‘descr(df)’ command is actually rather useful. Both sjmisc::descr(df) and summarytools::descr(df) do the job

gerhard  9:39 AM
https://stats.stackexchange.com/questions/3212/mode-class-and-type-of-r-objects

Cross ValidatedCross Validated
Mode, Class and Type of R objects
I was wondering what are the differences between Mode, Class and Type of R objects? Type of a R object can be obtained by typeof() function, mode by mode(), and class by class(). Also any other s...

gerhard  9:56 AM
the recipe package is really cool...to convert ordered factors to  numerical scores you just add
9:57
Untitled
step_ordinalscore(P_Sympathetic_Warm)







9:57
and it just does it without complaint :slightly_smiling_face:

daaronr  9:58 AM
we should probably convert these sorts of measures to percentiles, no?
10:00
(but for now ordinal scores are a good start)

gerhard  10:04 AM
how to do this is explained here https://cran.r-project.org/web/packages/recipes/vignettes/Custom_Steps.html
10:04
for this the dataset needs to be trained. I have to figure out to set the training dataset equal to the dataset to use...

daaronr  10:45 AM
just for recoding a variable with its percentile… there must be an easier way! (I don’t see why one wants to replace a variable in the testing data  with its percentile in the training data anyways)

gerhard  3:59 AM
this is the way to do tables!! https://cran.r-project.org/web/packages/janitor/vignettes/tabyls.html


17 replies
Last reply 3 years agoView thread

gerhard  4:56 AM
https://www.r-bloggers.com/building-reproducible-data-packages-with-datapackager/

R-bloggersR-bloggers
Building Reproducible Data Packages with DataPackageR
Sharing data sets for collaboration or publication has always been challenging, but it’s become increasingly problematic as complex and high dimensional data sets have become ubiquitous in the life sciences. Studies are large and time consuming; data collection takes time, data analysis is a moving target, as is the software used to carry it out. In the vaccine space (where I work) we analyze collections of high-dimensional immunological data sets from a variety of different technologies (RNA sequencing, cytometry, multiplexed antibody binding, and others). These data often arise from clinical trials and can involve tens to hundreds of subjects. The data are analyzed by teams of researchers… Show more
Sep 17th, 2018


Message r_and_datascience
















