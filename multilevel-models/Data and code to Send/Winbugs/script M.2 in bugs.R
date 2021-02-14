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

M.2.data<-list(
"y"=mydata$score,
"x"=mydata$female,
"N"=dim(mydata)[1],
"School"=mydata$School, 
"N.school"=length(unique(mydata$schoolid)))


set.seed(112215)  
M.2.inits<-function() {
list(alpha=rnorm(length(unique(mydata$schoolid))),
beta=rnorm(1),
delta=rnorm(1),
tau.student=runif(1,0,1),
tau.school=runif(1,0,1))} 

M.2.parameters<-c("delta", "beta", "alpha", "sigma2.student", "sigma2.school")



M.2<-bugs(M.2.data,
	M.2.inits, M.2.parameters,
	"M2.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


attach.bugs(M.2)
print(round(M.2[[10]][1:10,1:8],digits=2))
print(round(M.2[[10]][c("beta", "delta"),1:8],digits=2))
print(round(M.2[[10]]["sigma2.student",1:8],digits=2))
print(round(M.2[[10]]["sigma2.school",1:8],digits=2))



