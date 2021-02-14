setwd("C:/Users/gk249/Downloads/MLM workshop/Data and codes")

# To read .dta files in R
#install.packages("foreign")
library(foreign) 
#install.packages("R2WinBUGS")
library(R2WinBUGS)

# Load the dataset
mydata<-read.dta("schools.dta")

# Recode School id to avoid ``gaps'' (i.e., 1:N.school, no gaps between numbers)
mydata$School<-as.numeric(factor(mydata$schoolid), levels=unique(mydata$schoolid))

M.3.data<-list(
"y"=mydata$score,
"x"=mydata$female,
"N"=dim(mydata)[1],
"School"=mydata$School, 
"N.school"=length(unique(mydata$schoolid)))


set.seed(112215)  
M.3.inits<-function() {
list(alpha=rnorm(length(unique(mydata$schoolid))),
beta=rnorm(length(unique(mydata$schoolid))),
lambda=rnorm(1),
delta=rnorm(1),
tau.student=runif(1,0,1),
tau.slope.school=runif(1,0,1),
tau.intercept.school=runif(1,0,1))} 

M.3.parameters<-c("delta", "lambda",
	 "beta", "alpha", "sigma2.student", 
	"sigma2.intercept.school", "sigma2.slope.school")



M.3<-bugs(M.3.data,
	M.3.inits, M.3.parameters,
	"M3.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


attach.bugs(M.3)
print(round(M.3[[10]][1:10,1:8],digits=2))
print(round(M.3[[10]][c("delta", "delta"),1:8],digits=2))
print(round(M.3[[10]][c("lambda", "delta"),1:8],digits=2))
print(round(M.3[[10]]["sigma2.intercept.school",1:8],digits=2))
print(round(M.3[[10]]["sigma2.slope.school",1:8],digits=2))



