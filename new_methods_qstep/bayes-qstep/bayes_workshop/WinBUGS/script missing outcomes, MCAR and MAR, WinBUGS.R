setwd("//isad.isadroot.ex.ac.uk/UOE/User/Presentations/Bayesian workshop")
n<-2000
x<-rbinom(n, 1, 0.7)
X<-cbind(1,x)
beta<-c(0.7, 1.2)
y<-X%*%beta+rnorm(n)

### MCAR 
y[sample(1:n,500)]<-NA

y
sum(is.na(y))
y.missing<-which(is.na(y))
y.missing

regression.data<-list(
"n"=n,
"y"=as.vector(y), 
"x"=x)

regression.parameters<-c(
"beta", "sigma2", "y"
)


set.seed(1982)
regression.inits<-function() {
list(
beta=rnorm(2), precision=runif(1,0,1)
)
}

library(R2WinBUGS)

regression<-bugs(regression.data,regression.inits,regression.parameters,
	"regression.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")

attach.bugs(regression)
print(regression)

dim(y)

rm(list=ls())


# MAR
n<-2000
x<-rbinom(n, 1, 0.7)
X<-cbind(1,x)
beta<-c(0.7, 1.2)
y<-X%*%beta+rnorm(n)



nu<-c(0.5, -.85)

R<-ifelse(pnorm(X%*%nu)>=0.5,1,0)

y[R==1]<-NA

y
sum(is.na(y))
y.missing<-which(is.na(y))
y.missing


regression.data<-list(
"n"=n,
"y"=as.vector(y), 
"x"=x)

regression.parameters<-c(
"beta", "sigma2", "y"
)


set.seed(1982)
regression.inits<-function() {
list(
beta=rnorm(2), precision=runif(1,0,1)
)
}

library(R2WinBUGS)

regression<-bugs(regression.data,regression.inits,regression.parameters,
	"regression.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")

attach.bugs(regression)
print(y)
