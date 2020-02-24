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

#Create a discrete dependent variable
mydata$discrete.score<-ifelse(mydata$score>=median(mydata$score),1,0)

M.6.data<-list(
"y"=mydata$discrete.score,
"x"=mydata$female,
"z"=mydata$schtype,
"N"=dim(mydata)[1],
"School"=mydata$School, 
"N.school"=length(unique(mydata$schoolid)))


set.seed(112215)  
M.6.inits<-function() {
list(alpha=rnorm(length(unique(mydata$schoolid))),
beta=rnorm(length(unique(mydata$schoolid))),
tau.slope.school=1,
tau.intercept.school=1)} 

M.6.parameters<-c("delta", "lambda", "gamma", "psi",
	 "beta", "alpha",  
	"sigma2.intercept.school", "sigma2.slope.school")



M.6<-bugs(M.6.data,
	M.6.inits, M.6.parameters,
	"M6.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


attach.bugs(M.6)
print(round(M.6[[10]][,1:8],digits=2))



