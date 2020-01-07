setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")

library(MCMCpack)
library(coda)

# Simulate data for a linear regression
n<-2000
x<-rbinom(n, 1, 0.7)
X<-cbind(1,x)
beta<-c(0.7, 1.2)
y<-X%*%beta+rnorm(n)


## NOW WE estimate a linear model using MCMCpack
MCMCreg<-MCMCregress(y~1+x, data = NULL, burnin = 1000, mcmc = 20000, DIC=TRUE)

summary(MCMCreg)

## Access posterior samples
MCMCreg[,1]
MCMCreg[,2]
MCMCreg[,3]


mean(MCMCreg[,2])
sd(MCMCreg[,2])
quantile(MCMCreg[,2],c(0.05,0.95))

par(mfrow=c(1,2))
hist(MCMCreg[,1], main="Posterior draws of intercept", xlab="")
hist(MCMCreg[,2], main="Posterior draws of slope", xlab="")

par(mfrow=c(1,1))
hist(MCMCreg[,3], main=expression(paste("Posterior draws of ", sigma^2)), xlab="")


#Run Multiple chains and check convergence
MCMCreg.ch1<-MCMCregress(y~1+x, data = NULL, burnin = 1000, mcmc = 20000,
	seed=1232)
MCMCreg.ch2<-MCMCregress(y~1+x, data = NULL, burnin = 1000, mcmc = 20000,
	seed=1345)
MCMCreg.ch3<-MCMCregress(y~1+x, data = NULL, burnin = 1000, mcmc = 20000,
	seed=4134)

gelman.diag(mcmc.list(as.mcmc(MCMCreg.ch1[,1]), as.mcmc(MCMCreg.ch2[,1]),
	as.mcmc(MCMCreg.ch3[,1])))

gelman.diag(mcmc.list(as.mcmc(MCMCreg.ch1[,2]), as.mcmc(MCMCreg.ch2[,2]),
	as.mcmc(MCMCreg.ch3[,2])))

gelman.diag(mcmc.list(as.mcmc(MCMCreg.ch1[,3]), as.mcmc(MCMCreg.ch2[,3]),
	as.mcmc(MCMCreg.ch3[,3])))

#EXERCISE: Repeat the same multiple chain estimation exercise, 
# but without setting the seed command. What happens?


