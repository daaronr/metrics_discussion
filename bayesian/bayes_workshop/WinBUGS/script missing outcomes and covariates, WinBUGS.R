setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")
library(R2WinBUGS)
rm(list=ls())

### Suppose now that some covariates are missing as well
n<-2000
x<-rbinom(n, 1, 0.7)
X<-cbind(1,x)
beta<-c(0.7, 1.2)
y<-X%*%beta+rnorm(n)

y[sample(1:n,500)]<-NA
x[sample(1:n, 200)]<-NA

y
sum(is.na(y))
y.missing<-which(is.na(y))
y.missing

x
sum(is.na(x))
x.missing<-which(is.na(x))
x.missing


regression.data<-list(
"n"=n,
"y"=as.vector(y), 
"x"=x)

regression.parameters<-c(
"beta", "sigma2", "y", "x"
)

set.seed(1982)
regression.inits<-function() {
list(
beta=rnorm(2), precision=runif(1,0,1), alpha=rnorm(1)
)
}


regression<-bugs(regression.data,regression.inits,regression.parameters,
	"regression.covariatemissing.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


attach(regression)
print(regression)

