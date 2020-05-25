## Notes: Mullainathan

**Page** 1
 
The fundamental insight behind these breakthroughs is as much statistical as computational. Machine intelligence became possible once researchers
stopped approaching intelligence tasks procedurally and began tackling them
empirically. Face recognition algorithms, for example, do not consist of hard-wired
rules to scan for certain pixel combinations, based on human understanding of
what constitutes a face. Instead, these algorithms use a large dataset of photos
labeled as having a face or not to estimate a function f (x) that predicts the presence y of a face from pixels 

(p2)
supervised- machine learning, the focus of this article) revolves around
the problem of prediction: produce predictions of y from x

(p2)
manages to fit complex and very flexible functional forms to the data without simply overfitting; it finds functions that
work well out-of-sample

(p2)
danger in using these tools is taking
an algorithm built for y-, and presuming their β
- have the properties we typically
associate with estimation output

(p2)
One category of such applications appears when using
new kinds of data for traditional questions; for example, in measuring economic
activity using satellite images or in classifying industries using corporate 10-K filings.
Making sense of complex data such as images and text often involves a prediction
pre-processing step

(p2)
-this is the most relevant for me
In another category of applications, the key object of interest
is actually a parameter -, but the inference procedures (often implicitly) contain a
prediction task. For example, the first stage of a linear instrumental variables regression is effectively prediction. The same is true when estimating heterogeneous
treatment effects, testing for effects on multiple outcomes in experiments, and
flexibly controlling for observed confounders

(p2)
A final category is in direct policy
applications. Deciding which teacher to hire implicitly involves a prediction task
(what added value will a given teacher have?), one that is intimately tied to the
causal question of the value of an additional teacher.

(p3)
-useful example... interactive?
We consider 10,000 randomly selected owner-occupied units
from the 2011 metropolitan sample of the American Housing Survey. In addition
to the values of each unit, we also include 150 variables that contain information
about the unit and its location, such as the number of rooms, the base area, and
the census region within the United States. To compare different prediction techniques, we evaluate how well each approach predicts (log) unit value on a separate
hold-out set of 41,808 units from the same sample. All details on the sample and our
empirical exercise can be found in an online appendix available with this paper at
http://e-jep.org

(p3)
 In-sample performance may overstate
performance; this is especially true for certain machine learning algorithms like
random forests that have a strong tendency to overfit. Second, on out-of-sample
performance, machine learning algorithms such as random forests can do significantly better than ordinary least squares, even at moderate sample sizes and
with a limited number of covariates

(p4)
algorithms are fitted on the same, randomly drawn training sample of 10,000 units and
evaluated on the 41,808 remaining held-out units. The

(p4)
Simply including all pairwise
interactions would be infeasible as it produces more regressors than data points
(especially considering that some variables are categorical

(p4)
Machine learning searches for these interactions automatically

(p5)
Shallow Regression Tree Predicting House Values

(p5)
-not sure what's going on here. is this the random forest thing?
The prediction function takes the form of a tree that splits in two at every
node. At each node of the tree, the value of a single variable (say, number of bathrooms) determines whether the left (less than two bathrooms) or the right (two or
more) child node is considered next. When a terminal node-a leaf—is reached, a
prediction is returned. An

(p5)
So how
does machine learning manage to do out-of-sample prediction?
The first part of the solution is regularization. In the tree case, instead of
choosing the -best” overall tree, we could choose the best tree among those of a
certain depth.

(p5)
Tree depth is an example of a regularizer. It measures the complexity of a
function. As we regularize less, we do a better job at approximating the in-sample
variation, but for the same reason, the wedge between in-sample and out-of-sample

(p6)
how do we choose the level of regularization (-tune the algorithm”)? This is the
second key insight: empirical tuning.

(p6)
-tuning within the training sample
 In
empirical tuning, we create an out-of-sample experiment inside the original sample.
We fit on one part of the data and ask which level of regularization leads to the best
performance on the other part of the data.4
 We can increase the efficiency of this
procedure through cross-validation: we randomly partition the sample into equally
sized subsamples (-folds”). The estimation process then involves successively holding
out one of the folds for evaluation while fitting the prediction function for a range
of regularization parameters on all remaining folds. Finally, we pick the parameter
with the best estimated average performance.5
 The

(p6)
-!
This procedure works because prediction quality is observable: both predictions y- and outcomes y are observed. Contrast this with parameter estimation, where
typically we must rely on assumptions about the data-generating process to ensure
consistency

(p7)
Some Machine Learning Algorithms
Function class - (and its parametrization) Regularizer R( f )
Global/parametric predictors
Linear -′x (and generalizations) Subset selection|

(p7)
-very useful table
Some Machine Learning Algorithms
Function class - (and its parametrization) Regularizer R( f )
Global/parametric predictors
Linear -′x (and generalizations) Subset selection||β|

(p7)
Random forest (linear combination of
trees

(p7)
-kernel in an ml framework!
Kernel regression

(p6)
-but can we make inferences about the structure? hypothesis testing?
Regularization combines with the observability of prediction quality to allow us to fit flexible functional forms and still find generalizable
structure.

(p7)
Picking the prediction function then involves two steps: The first step is, conditional on a level of complexity,
to pick the best in-sample loss-minimizing function.8
 The second step is to estimate
the optimal level of complexity using empirical tuning (as we saw in cross-validating
the depth of the tree).

(p8)
-but they forgot to mention that others are shrunk
linear regression in which only a small number of predictors from all possible variables are chosen to have nonzero values: the absolute-value regularizer encourages
a coefficient vector where many are exactly zero.

(p4)
-why no ridge or elastic net?
LASSO

(p8)
-ensembles usually win contests
While it may be unsurprising that such ensembles perform well on average-
after all, they can cover a wider array of functional forms-it may be more surprising
that they come on top in virtually every prediction competition

(p8)
-neural nets broadly  explained
neural nets are popular prediction algorithms for image recognition tasks. For one standard implementation in binary prediction, the underlying
function class is that of nested logistic regressions: The final prediction is a logistic
transformation of a linear combination of variables (-neurons”) that are themselves
such logistic transformations, creating a layered hierarchy of logit regressions. The
complexity of these functions is controlled by the number of layers, the number of
neurons per layer, and their connectivity (that is, how many variables from one level
enter each logistic regression on the next)

(p9)
These choices about how to represent the features will interact with the regularizer
and function class: A linear model can reproduce the log base area per room from
log base area and log room number easily, while a regression tree would require
many splits to do so.

(p9)
In a traditional estimator, replacing one set of variables by a set
of transformed variables from which it could be reconstructed would not change the
predictions, because the set of functions being chosen from has not changed. But
with regularization, including these variables can improve predictions because-at
any given level of regularization-the set of functions might change

(p9)
-!!
Economic theory and content expertise play a crucial role in guiding where
the algorithm looks for structure first. This is the sense in which -simply throw it
all in- is an unreasonable way to understand or run these machine learning algorithms

(p9)
-I need hear of using adjusted r square for this
Should out-ofsample performance be estimated using some known correction for overfitting
(such as an adjusted R2
 when it is available) or using cross-validation

(p9)
-big unknowns
available
finite-sample guidance on its implementation-such as heuristics for the number
of folds (usually five to ten) or the -one standard-error rule” for tuning the LASSO
(Hastie, Tibshirani, and Friedman 2009)-has a more ad-hoc flavor

(p9)
firewall principle:
none of the data involved in fitting the prediction function-which includes crossvalidation to tune the algorithm—is used to evaluate the prediction function that
is produced

(p10)
-how?
First, econometrics can guide
design choices, such as the number of folds or the function class

(p10)
with the fitted function. Why not also use it to learn
something about the -underlying model

(p10)
-!!
the lack of standard errors on the coefficients. Even when machine-learning predictors produce
familiar output like linear functions, forming these standard errors can be more
complicated than seems at first glance as they would have to account for the model
selection itself. In fact, Leeb and P-tscher (2006, 2008) develop conditions under
which it is impossible to obtain (uniformly) consistent estimates of the distribution
of model parameters after data-driven selection

(p11)
-lasso chosen variables are unstable because of multicollinearity. a problem for making inferences from estimated coefficients
the variables are correlated with each other (say the number of rooms of a house and
its square-footage), then such variables are substitutes in predicting house prices.
Similar predictions can be produced using very different variables. Which variables
are actually chosen depends on the specific finite sample

(p11)
this creates an Achilles-
heel: more functions mean a greater chance that two functions with very different

(p12)
coefficients can produce similar prediction quality

(p12)
In econometric terms, while the lack of standard errors illustrates the limitations to making inference after model selection, the challenge here is (uniform)
model selection consistency itself

(p12)
-is this equally a problem for non sparsity based procedures like ridge?
First, it encourages the choice
of less complex, but wrong models. Even if the best model uses interactions of
number of bathrooms with number of rooms, regularization may lead to a choice
of a simpler (but worse) model that uses only number of fireplaces. Second, it can
bring with it a cousin of omitted variable bias, where we are typically concerned with
correlations between observed variables and unobserved ones. Here, when regularization excludes some variables, even a correlation between observed variables and
other observed (but excluded) ones can create bias in the estimated coefficients

(p12)
 Some econometric results also show the converse: when there is structure,
it will be recovered at least asymptotically (for example, for prediction consistency
of LASSO-type estimators in an approximately sparse linear framework, see Belloni,
Chernozhukov, and Hansen 2011).

(p12)
-unrealistic for micro economic applications
Zhao and Yu (2006) who establish asymptotic model-selection consistency for the
LASSO. Besides assuming that the true model is -sparse”—only a few variables are
relevant-they also require the “irrepresentable condition” between observables:
loosely put, none of the irrelevant covariates can be even moderately related to the
set of relevant ones.
In practice, these assumptions are strong.

(p13)
Machine learning can
deal with unconventional data that is too high-dimensional for standard estimation
methods, including image and language information that we conventionally had
not even thought of as data we can work with, let alone include in a regression

(p13)
satellite data

(p13)
they provide us with a large x vector of image-based
data; these images are then matched (in what we hope is a representative sample)
to yield data which form the y variable. This translation of satellite images to yield
measures is a prediction problem

(p13)
 particularly relevant where reliable data on
economic outcomes are missing, such as in tracking and targeting poverty in developing countries (Blumenstock 2016

(p13)
cell-phone data to measure
wealth

(p13)
Google Street View to
measure block-level income in New York City and Boston

(p13)
online posts can be made meaningful by labeling them with machine
learning

(p14)
extract similarity of firms from their
10-K business description texts, generating new time-varying industry classifications
for these firms

(p14)
and imputing even in traditional datasets. In this vein, Feigenbaum (2015a, b) applies machine-learning
classifiers to match individuals in historical records

(p13)
-the first prediction applications
New Data

(p14)
Prediction in the Service of Estimation

(p14)
linear instrumental variables understood as a two-stage procedure

(p14)
The first stage is typically handled as an estimation step. But this is effectively a
prediction task: only the predictions x- enter the second stage; the coefficients in the
first stage are merely a means to these fitted values.
Understood this way, the finite-sample biases in instrumental variables are a
consequence of overfitting

(p14)
-ll
overfitting. Overfitting means that the in-sample fitted values x- pick
up not only the signal -′z, but also the noise δ. As a consequence, xˆ is biased towards
x, and the second-stage instrumental variable estimate -
- is thus biased towards the
ordinary least squares estimate of y on x. Since overfit will be larger when sample
size is low, the number of instruments is high, or the instruments are weak, we can
see why biases arise in these cases

(p14)
 same techniques applied here result in split-sample instrumental variables
(Angrist and Krueger 1995) and -jackknife” instrumental variables (Angrist,
Imbens, and Krueger 1999)

(p15)
-worth referencing
In particular, a set of papers has already introduced regularization into the first stage in a high-dimensional setting, including the LASSO
(Belloni, Chen, Chernozhukov, and Hansen 2012) and ridge regression (Carrasco
2012; Hansen and Kozbur 2014). More recent extensions include nonlinear functional forms, all the way to neural nets (Hartford, Leyton-Brown, and Taddy 2016

(p15)
Practically, even when there appears to be only a few instruments, the problem
is effectively high-dimensional because there are many degrees of freedom in how
instruments are actually constructed

(p15)
-a note of caution
It allows us to let the data
explicitly pick effective specifications, and thus allows us to recover more of the variation and construct stronger instruments, provided that predictions are constructed
and used in a way that preserves the exclusion restriction

(p15)
-this seems similar to my idea of regularising on a subset
Chernozhukov, Chetverikov, Demirer, Duflo, Hansen, and Newey
(2016) take care of high-dimensional controls in treatment effect estimation by
solving two simultaneous prediction problems, one in the outcome and one in the
treatment equation

(p15)
the problem of verifying balance between treatment and control groups
(such as when there is attrition

(p15)
-!
 Or consider the seemingly different problem of
testing for effects on many outcomes. Both can be viewed as prediction problems
(Ludwig, Mullainathan, and Spiess 2017). If treatment assignment can be predicted
better than chance from pretreatment covariates, this is a sign of imbalance. If treatment assignment can be predicted from a set of outcomes, the treatment must have
had an effect

(p15)
 prediction task of mapping
unit-level attributes to individual effect estimates

(p15)
 Athey
and Imbens (2016) use sample-splitting to obtain valid (conditional) inference on

(p16)
treatment effects that are estimated using decision trees,

(p16)
-look into the implication for treatment assignment with heterogeneity
heterogenous treatment effects can be used to assign treatments;
Misra and Dub- (2016) illustrate this on the problem of price targeting, applying
Bayesian regularized methods to a large-scale experiment where prices were
randomly assigned

(p16)
-caveat
 Suppose the algorithm chooses a tree that splits on
education but not on age. Conditional on this tree, the estimated coefficients are
consistent. But that does not imply that treatment effects do not also vary by age,
as education may well covary with age; on other draws of the data, in fact, the same
procedure could have chosen a tree that split on age instead

(p16)
Prediction in Policy

(p16)
-no .. can we predict who will gain most from admission? but even if we can what can we report?
Prediction in Policy

