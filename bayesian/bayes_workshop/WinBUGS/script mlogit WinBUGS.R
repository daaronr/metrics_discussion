setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")
library(R2WinBUGS)
library(foreign)

mydata<-read.csv("cars.csv")
names(mydata)


table(mydata$Car)



mlogit.data<-list(
"n"=nrow(mydata),
"y"=mydata$Car, 
"x1"=(mydata$Income-mean(mydata$Income))/sd(mydata$Income), 
"x2"=(mydata$Household.Size-mean(mydata$Household.Size))/sd(mydata$Household.Size))

mlogit.parameters<-c(
"beta"
)


set.seed(1982)
mlogit.inits<-function() {
list(
beta=rbind(rep(NA,3),
matrix(rnorm(3),3,3))
)
}


mlogit<-bugs(mlogit.data,mlogit.inits,mlogit.parameters,
	"mlogit.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


attach.bugs(mlogit)
print(mlogit)

