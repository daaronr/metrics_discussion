#setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")
install.packages("rjags")
library(rjags)
install.packages("MCMCpack")
library(MCMCpack)

data(birthwt)

probit.data<-list(
"n"=nrow(birthwt),
"y"=birthwt$low, 
"x"=birthwt$smoke)


probit.parameters<-c(
"beta"
)


set.seed(1982)
probit.inits<-function() { #initial values
list(
beta=rnorm(2)
)
}


jags.probit <- jags.model( file = here("bayes_workshop","JAGS","probit.bug"), 
	data=probit.data, inits=probit.inits, n.chains=1, n.adapt=500 ) 

#The first bit is the burning phase500 are burned

#the model file, here 'probit.bug' needs to be specified 

probit <- coda.samples( jags.probit, probit.parameters, n.iter=10000 ) #this is the 


summary(probit)



