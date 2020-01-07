cd "C:\Users\gk249\Downloads\Bayesian workshop\Data and codes"

clear 

* SIMULATE THE DATA
set obs 100
set seed 1

* Level 2
generate id=_n
generate alpha=rnormal()
expand 5 // 5 observations per subject

* Level 1
bysort id: generate time=_n
xtset id time
generate x=rnormal()

* Generate error 
generate u=rnormal()

* Generate dependent variable
generate y=0.5+1*x+alpha+u>0


* Estimate the panel (multi-level) probit model by ML
meprobit y x || id:


* Estimate the panel (multi-level) probit model by MCMC
bayes: meprobit y x || id:

* Compare the two outputs


 * Now specifying other (tighter) priors
 * Compare now the two outputs
bayes, prior({y:x}, normal(0, 0.01)) initial({y:x} 0.5 {U0:sigma2} 1)  prior({U0:sigma2}, igamma(1,1)): meprobit y x || id:
 
 
bayesgraph diagnostic {y:x}
