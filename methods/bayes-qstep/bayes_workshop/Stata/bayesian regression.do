cd "C:\Users\gk249\Downloads\Bayesian workshop\Data and codes"

insheet using "linear.csv", clear

// Linear Regression using the simple bayes: command
bayes: regress y x

* Now specifying particular priors & initial values
bayes, prior({y:x}, normal(0, 1)) initial({y:x} 0.5 {sigma2} 1)  prior({sigma2}, igamma(1,1)): regress y x

bayesgraph trace {sigma2} {y:x}, byparm

bayesgraph diagnostics _all

bayesgraph histogram {x}, normal

bayesgraph matrix _all
 
bayesstats ic

// Linear Regression using bayesmh
 bayesmh y x, likelihood(normal({var})) prior({y:}, normal(0,100)) prior({var}, igamma(10,10)) initrandom 

bayesgraph trace {var} {y:x}, byparm

bayesgraph diagnostics _all

bayesgraph histogram {x}, normal

bayesgraph histogram {x}, normal

bayesgraph matrix _all
 
bayesstats ic


// Comparing fit of alternative models
quietly {
bayes: regress y x
estimates store m1

bayes: regress y
estimates store m0
}


bayesstats ic m1 m0, basemodel(m0)

// Which model is better?
