library(coda)
library(mvtnorm)


# Load Data
setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")
birthwt<-read.csv("birthwt.csv")


# Set up data
X<-cbind(1, birthwt$smoke)
y<- birthwt$low
n<-nrow(X)	
k<-ncol(X)



library(foreach)
library(doParallel)
cl<-makeCluster(3, "PSOCK")
registerDoParallel(cl)

library(doRNG)
registerDoRNG()
getDoParWorkers()

nchains<-3

Lout<-foreach(i=1:nchains, .export=c("y", "X", "n", "k"),
	.packages = c("mvtnorm", "coda")) %dopar%{

setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes/R MCMC")
source ("parallel_probit.R")     # Update Gamma coefficients (mixture compnent reg. parms)


out<-mcmc_probit(y=y, X=X, n=n, k=k,
	nsim=5000, 
	thin=5, 
	burn=2500
	)

return(out)
}
stopCluster(cl)




# Check Convergence
gelman.diag(mcmc.list(as.mcmc(Lout[[1]]$Beta), as.mcmc(Lout[[2]]$Beta), as.mcmc(Lout[[3]]$Beta)))


BETA<-rbind(Lout[[1]]$Beta,Lout[[2]]$Beta,Lout[[3]]$Beta)

# Posterior Summaries
cbind(colMeans(BETA), HPDinterval(as.mcmc(BETA), p=0.95))


