setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")
library(R2WinBUGS)
library(foreign)

####
rm(list=ls())
df<-read.csv("complexmissing.csv")

df

complexmissing.data<-list(
"n"=nrow(df),
"Y"=df$Y, 
"X.1"=df$X.1,
"X.2"=df$X.2,
"X.3"=df$X.3,
"R.X1"=df$R.X1,
"R.X2"=df$R.X2,
"R.Y"=df$R.Y
)

complexmissing.parameters<-c(
"th1", "th2", "beta", "etaY", "eta1", "eta2", "etaY",
"tau", 
"Y", "X.1", "X.2"
)

set.seed(1982)
complexmissing.inits<-function() {
list(
beta=rnorm(4), etaY=rnorm(4), tau=c(1,1), etaY=rnorm(4),
th1=rnorm(2), th2=rnorm(3)
)
}


complexmissing<-bugs(complexmissing.data,complexmissing.inits,complexmissing.parameters,
	"complex.missing.bug",
	n.chains=3, n.iter=10000,
	#n.chains=3, n.iter=10, debug=TRUE,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")

attach.bugs(complexmissing)
print(complexmissing)

