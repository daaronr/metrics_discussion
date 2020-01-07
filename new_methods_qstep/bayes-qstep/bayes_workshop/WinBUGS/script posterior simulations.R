setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")

# load library that interfaces R with WinBUGS
library(R2WinBUGS)

## NOW WE START USING WINBUGS

list(n=20,time=c( 25,45,238,194,16,23,30,16,22,123,51,412,
45,162,14,72,5,43,45,91))

# Data List
simulations.data<-list(
"z"=c( 25,45,238,194,16,23,30,16,22,123,51,412,
45,162,14,72,5,43,45,91),
"n"=20
)



# Define the parameters
simulations.parameters<-c(
"ynew", "above150")

# Set initial values for the paramters
set.seed(1982)
simulations.inits<-function() {
list(
tau=1, mu=rnorm(1)
)
}


#Run the model
posterior.simulations<-bugs(simulations.data,
	simulations.inits,simulations.parameters,
	"posterior_simulations.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


# Attach it
attach.bugs(posterior.simulations)

#Print the results
print(posterior.simulations, digits=2)

# The average predictive survival time of a patient is 
mean(exp(ynew))


# The predictive probability that a patient survives more than
# 150 weeks is 0.16