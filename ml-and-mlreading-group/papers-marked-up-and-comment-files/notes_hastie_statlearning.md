%Notes Hastie: Statistical Learning with Sparsity

[google books link](https://books.google.co.uk/books?hl=en&lr=&id=f-A_CQAAQBAJ&oi=fnd&pg=PP1&ots=G4RMC-gZU-&sig=u_EoI3-ZcX0phwsZgLt2Ux7DXyc#v=onepage&q&f=true)


#Introduction

> One form of simplicity is sparsity, the central theme of this book. Loosely speaking, a sparse statistical model is one in which only a relatively small number of parameters (or predictors) play an important role.

"the $\ell_1$ norm is special" (abs value). Other norms yield nonconvex problems, hard to minimize.

> “bet on sparsity” principle: Use a procedure that does well in sparse problems, since no procedure does well in dense problems.

- Examples from gene mapping

##Book roadmap

- Chapter 2 ... lasso for linear regression, and a simple coordinate descent algorithm for its computation.

- Chapter 3 application of $\ell_1$ [lasso-type] penalties to generalized linear models such as multinomial and survival models, as well as support vector machines. [?]

- Chapter 4: Generalized penalties such as the elastic net and group lasso are discussed in Chapter 4.

- Chapter 5: numerical methods for optimization (skip for now]

- Chapter 6:  statistical inference for fitted (lasso) models, including the bootstrap, Bayesian methods and more recent stuff

- Chapter 7: Sparse matrix decomposition [?] (Skip?)
- Ch 8: sparse multivariate analysis of that (Skip?)
- Ch 9: Graphical models and their selection (Skip?)
- Ch 10: compressed sensing (Skip?)
- Ch 11: a survey of theoretical results for the lasso (Skip?)

#Ch 2: Lasso for linear models

- N samples (?N observations), want to approx the response variable using a linear combination of the predoctors

***

**OLS** minimizes squared-error loss but

1. Prediction accuracy
- OLS unbiased but 'often has large variance'
- prediction accuracy can be improved by shrinking coefficients (even to zero)
    - yielding biased but perhaps better predictive estimators

2. Interpretation: too many predictors hard to interpret
- DR: I do not care about this for fitting background noise in experiments

##2.2 The Lasso Estimator

Lasso bounds the sum of the abs values of coefficients, an "$\ell_1" constraint.

Lasso is OLS subject to


\

$\sum_{j=1..p}{\abs(\beta_j)}\leq t$

\

"compactly" $||\beta||_1\leq t$

with notation for the "$\ell_1$ norm"


\

- Bound $t$ acts as a 'budget', must be specified by an 'external procedure' such as cross-validation

- typically we must *standardize the predictors* $\mathbf{X}** so that each column is centered with unit variance ... as well as  the outcome variables (?) ... can ignore intercept

    - DR: Not clear here whether standardisation is necessary for the procedure to be valid or just convenient for explaining and deriving its properties.

\

\textcolor{gray}{Aside: Can re-write Lasso minimization st constraint as a Lagrangian. $\lambda$ plays the same role as $t$ in the constraint. Thus we can speak of the solution to the Lagrangian minimisation problem $\hat{\beta}_{\lambda}$ which also solves the bound problem with $t=||\hat_{\lambda}||_1$.}




\textcolor{gray}{Aside: We often remove the $frac{1}{2N}$ term at the beginning of the minimization problem. Same minimization, minimizing sum of squared deviations rather than something like an average of this.}

\

Express (Karush-Kuhn-Tucker) optimisation conditions for this ...


***

Example from Thomas (1990) on crime data

> Typically ... lasso is most useful for much larger problems, including "wide" data for which $p>>N$

\

Fig 2.1: Lasso vs ridge regression; coefficients of each for a set of considered variables plotted against their respective norms (as shares of maximal bound on coefficient sum measure, i.e., ols, for each)

- Note ridge regression penalises *squared* sums of betas

    - Fig 2.2., in $\beta_1,\beta_2$ space   illustrates the difference well: contour lines of Resid SS elipses, 'budget constraint' for each (disc vs diamond)

(Note: lasso bound was chosen via cross-validation)

- No analytical statistical inference after lasso (some being developed?), bootstrap is common

>  lasso sets two of the five coefficients to zero, and tends to shrink the coefficients of the others toward zero relative to the full least-squares estimate.

- DR: analytically and intuitively, I do not yet understand why lasso should shrink coefficients but not all the way to zero.
    - The penalty is linear in the coefficient size, so I would think the solution would be bang-bang, either drop a coeficient or leave it unchanged. But it is not.
    - Adding an increment to a $\hat{\beta}$ when it is below the OLS estimate should have a linear effect on the RSS (according to my memory and according to Sebastian).
    - But that would mean that shrinking one parameter always yields a better benefit to cost ratio. Thus I should shrink each parameter to zero before beginning to shrink any others. This cannot be right!

I looked up this derivative wrt the beta vector (one needs to set this to 0 to get the ols estimates

[stackexchange](https://stats.stackexchange.com/questions/46151/how-to-derive-the-least-square-estimator-for-multiple-linear-regression)

$\frac{d RSS}{d \beta}=-2X^{T}(y-X\beta}$

or

$−\frac{d e'e}{d b}=2X′y+2X′Xb$

The answer to this question: while the impact of changing each coefficient on SSR is in fact constant (a constant own-derivative), there is *also* an impact of changing one coefficient on the *other* derivatives. As one coefficient shrinks to zero the marginal impact of the other coefficients on the SSR may (will?) increase.

    - At the same time, we need that the effect of increasing it from zero need not be infinite, so it might not outweigh the linear penalty, thus some coefficients might be set to zero

**Relaxed lasso**

> the least-squares fit on the subset of the three predictors tends to expand the lasso estimates away from zero. The nonzero estimates from the lasso tend to be biased toward zero, so the debiasing in the right panel can often improve the prediction error of the model. This two-stage process is also known as the relaxed lasso (Meinshausen 2007).


- DR: When is this likely to help/hurt relative to pure lasso?

- [Stackexchange discussion](https://stats.stackexchange.com/questions/285501/why-do-we-use-ols-to-estimate-the-final-model-chosen-by-lars/285518#285518) Contrasts a 'relaxed-lasso' from a 'lars-ols'

***

Aside: which seems better for *Control variable selection for prediction/reducing noise to enable better inference of treatment effects*?

Ridge? better than Lasso here? We do not care about *interpreting* the predictors here... so if we allow $\beta$‘s to be shrunk towards zero for each coefficient maybe that should yield better prediction than making them exactly zero?

\

On the other hand if we know the true model is ‘parsimonious’ (as in the genes problem) it might boost efficiency to allow inference about coefficients that should be exactly zero (edited)

***

## 2.3 Cross-Validation and Inference

Generalization ability
: accuracy  for predicting independent test data from the same population

... find the value of t that does best


**Cross-validation procedure*

1. randomly divide ... dataset into K groups.

"Typical choices ... might be 5 or 10, and sometimes N."

2. One 'test', remaining K-1 'training'

3. Apply lasso to training data for a range of t values,
    - use each fitted model to predict the responses in the test set, recording mean-squared prediction errors for each value of t.

4. Repeat the previous step K times
    - each time, one of the K groups is the test data, remaining K − 1 are training data.
    - yields K different estimates of the prediction error over a range of t values.

5. Average K estimates of prediction error for each value of t $\rightarrow$  cross-validation error curve.

Fig 2.3 plots an example with K=10 splits for cross validation

- ... of the estimated MS prediction error vs the relative bound $\tilde{t}$(summed absolute value of Lasso betas divided by summed abs value of OLS betas).
- Also draw dotted line at the 1-std-error rule choice of $\tilde{t$}
- Number of nonzero coefficients plotted at top

##2.4 Computation of the Lasso solution

DR: I think I will skip this for now

least angle/LARS is mentioned at the bottom as a 'homotopy method' which "produce the entire path of solutions in a sequential fashion, starting at zero"

##2.5 Degrees of freedom

...

Jumping to

##2.10 Some perspective

**Good properties of the Lasso ($\ell_1$ penalty)**

- Natural interpretation (enforce sparsity and simplicity)

- Statistical efficiency ... if the underlying true signal is sparse (but if it is not sparse "no method can do well relative to the Bayes error")

- Computational efficiency, as $\ell_1$ penalties are convex

#Chapter 3: Generalized linear models

#Chapter 4: Generalizations of the Lasso penalty

> lasso does not handle highly correlated variables very well; the coefficient paths tend to be erratic and can sometimes show wild behavior.

The elastic net makes a compromise between the ridge and the lasso penalties (Zou and Hastie 2005)1] is a parameter that can be varied.

For an individual coefficient the penalty is
$\frac{1}{2} (1-\alpha)\beta_j^2 + \alpha|\beta_j|$

(a convex combo of the lasso and ridge penalties)

multiplied by a 'regularization weight' $\lambda>0$ which plays the same role (I think) as in lasso

- elastic net is also *strictly convex*


