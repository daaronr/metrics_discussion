setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")
library(R2WinBUGS)
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
probit.inits<-function() {
list(
beta=rnorm(2)
)
}



probit<-bugs(probit.data,probit.inits,probit.parameters,
	"probit.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


attach.bugs(probit)
print(probit)


write.csv(birthwt, file="birthwt.csv")
