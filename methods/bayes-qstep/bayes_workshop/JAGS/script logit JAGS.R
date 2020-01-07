setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")

# load library that interfaces R with JAGS
library(rjags)

library(MCMCpack)
data(birthwt)

names(birthwt)
birthwt


logit.data<-list(
"n"=nrow(birthwt),
"y"=birthwt$low, 
"x"=birthwt$smoke)

logit.parameters<-c(
"beta"
)


set.seed(1982)
logit.inits<-function() {
list(
beta=rnorm(2)
)
}


jags.logit <- jags.model( file = "logit.bug", 
	data=logit.data, inits=logit.inits, n.chains=1, n.adapt=500 )


logit <- coda.samples( jags.logit, logit.parameters, n.iter=10000 )


summary(logit)
