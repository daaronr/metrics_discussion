cd "C:\Users\gk249\Downloads\Bayesian workshop\Data and codes"

insheet using "birthwt.csv", clear

// Bayesian logit model
bayes: logit low smoke

// Bayesian inference logit model using bayesm
bayesmh low smoke, likelihood(logit) prior({low:}, normal(0,100))

// Bayesian probit model
bayes: probit low smoke

// Bayesian inference probit model using bayesm
bayesmh low smoke, likelihood(probit) prior({low:}, normal(0,100))

// Running multiple chains
// Chain 1
bayesmh low smoke, likelihood(logit) prior({low:}, normal(0,100)) ///
 mcmcsize(2000) saving(mcmcm_chain1, replace)
 
 estimates store ch1
 estimates save ch1, replace
 
// Chain 2
bayesmh low smoke, likelihood(logit) prior({low:}, normal(0,100)) ///
mcmcsize(2000) saving(mcmcm_chain2, replace)
 
estimates store ch2
 estimates save ch2, replace
 
 // Chain 3
 bayesmh low smoke, likelihood(logit) prior({low:}, normal(0,100)) ///
 mcmcsize(2000) saving(mcmcm_chain3, replace)
 
 estimates store ch3
 estimates save ch3, replace
 
 
// Install Gelman-Rubin Statistic
net install grubin, from(http://www.stata.com/users/nbalov)
 
// Assessing convergence using Gelman-Rubin Statistic
grubin, estnames(ch1 ch2 ch3)
