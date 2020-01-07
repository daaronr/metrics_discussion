setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")

# load library that interfaces R with WinBUGS
library(MCMCpack)

## Set up the data

Price<-c(296,296,300,302,300,304,303,299,293,294,294,293,
295,287,288,297,305,307,307,304,303,304,
304,309,309,309,307,306,304,300,296,301,298,295,295,293,292,
297,294,293,306,303,301,303,308,305,302,301,297,299)

y<-rep(NA, 49)

for (j in 1:49) {
y[j]<-(Price[j+1]-Price[j])/Price[j]
}

# Fit the Bayesian Model using MCMC
Regression<-MCMCregress(y~1, data = NULL, burnin = 1000, mcmc = 20000)

# Simulate Data
yrep<-matrix(NA, nrow=dim(Regression)[1], ncol=length(y))

for (j in 1:dim(Regression)[1]) {
yrep[j,]<-rnorm(49, mean = Regression[j,1], sd = Regression[j,2])
}


# Compare the true values against the simulated ones

# ``True'' value or y[1]
y[1]

# Mean simulated value of y[1]
mean(yrep[,1])

# Does the 95% CI of yrep[1] cover the ``true'' y[1]?
HPDinterval(as.mcmc(yrep[,1]), p=0.95)

# Exercise: check this for all the pairwise comparisons (true, simulated)
# Come up with another summary measure of the prediction error




