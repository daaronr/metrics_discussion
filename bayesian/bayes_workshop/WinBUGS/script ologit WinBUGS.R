setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")
library(R2WinBUGS)

#Simulate some data
set.seed(123)
x1 <- rnorm(100) 
x2 <- rnorm(100)
z <- 1.0 + x1*0.1 - x2*0.5 + rnorm(100)
y <- z
y[z < 0] <- 1
y[z >= 0 & z < 1] <- 2
y[z >= 1 & z < 1.5] <- 3
y[z >= 1.5] <- 4


ologit.data<-list(
"n"=length(y),
"y"=y, 
"x1"=x1,
"x2"=x2)


ologit.parameters<-c(
"beta", "cut"
)


set.seed(1982)
ologit.inits<-function() {
list(
beta=rnorm(2), g=c(1,1,1)
)
}



ologit<-bugs(ologit.data,ologit.inits,ologit.parameters,
	"ologit.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


attach.bugs(ologit)
print(ologit)

