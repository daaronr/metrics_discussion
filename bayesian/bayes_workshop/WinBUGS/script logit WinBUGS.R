setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")

library(R2WinBUGS)
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


logit<-bugs(logit.data,logit.inits,logit.parameters,
	"logit.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


attach.bugs(logit)
print(logit)

