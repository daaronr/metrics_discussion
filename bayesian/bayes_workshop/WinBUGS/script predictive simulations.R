setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")

# load library that interfaces R with WinBUGS
library(R2WinBUGS)

## NOW WE START USING WINBUGS

Price<-c(296,296,300,302,300,304,303,299,293,294,294,293,
295,287,288,297,305,307,307,304,303,304,
304,309,309,309,307,306,304,300,296,301,298,295,295,293,292,
297,294,293,306,303,301,303,308,305,302,301,297,299)

# Data List
predictivechecks.data<-list(
"Price"=Price,
"N"=49
)



# Define the parameters
predictivechecks.parameters<-c(
"PPC", "yrep")

# Set initial values for the paramters
set.seed(1982)
predictivechecks.inits<-function() {
list(
tau=1, Mu=rnorm(1), lam=rnorm(1)
)
}


#Run the model
predictive.checks<-bugs(predictivechecks.data,
	predictivechecks.inits,predictivechecks.parameters,
	"predictive_simulations.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


# Attach it
attach.bugs(predictive.checks)

#Print the results
print(predictive.checks)

print(predictive.checks[[10]]["PPC",], digits=2)

# No significant difference between the predicted \& observed skewness


# Can also compare individual share prices
# Create the variable y
y<-rep(NA, 49)

for (j in 1:49) {
y[j]<-(Price[j+1]-Price[j])/Price[j]
}

# Compare ``true'' and simulate values of y 
# ``True'' value or y[1]
y[1]

# Mean simulated value of y[1]
mean(yrep[,1])

# Does the 95% CI of yrep[1] cover the ``true'' y[1]?
HPDinterval(as.mcmc(yrep[,1]), p=0.95)

# Exercise: check this for all the pairwise comparisons (true, simulated)
# Come up with another summary measure of the prediction error




