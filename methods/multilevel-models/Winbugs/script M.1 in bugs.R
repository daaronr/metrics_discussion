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

M.1.data<-list(
"y"=mydata$score,
"N"=dim(mydata)[1],
"School"=mydata$School, 
"N.school"=length(unique(mydata$schoolid)))


set.seed(112215)  
M.1.inits<-function() {
list(alpha=rnorm(length(unique(mydata$schoolid))),
delta=rnorm(1),
tau.student=runif(1,0,1),
tau.school=runif(1,0,1))} 

M.1.parameters<-c("delta", "alpha", "sigma2.student", "sigma2.school")



M.1<-bugs(M.1.data,
	M.1.inits, M.1.parameters,
	"M1.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


attach.bugs(M.1)
print(M.1)
print(round(M.1[[10]][1:10,1:8],digits=2))
print(round(M.1[[10]][c("delta"),1:8],digits=2))
print(round(M.1[[10]]["sigma2.student",1:8],digits=2))
print(round(M.1[[10]]["sigma2.school",1:8],digits=2))

Random.effects<-cbind(colMeans(alpha),
HPDinterval(as.mcmc(alpha)))
colnames(Random.effects)<-c("Mean", "CI.Low", "CI.High")


# Plot the school random effects, accounting for uncertainty
plot(Random.effects[,1], 
	xlab="School", ylab="", pch=20, ylim=c(0,60),
main=expression(hat(alpha[j])), cex.main=2.5)
segments(1:508,
Random.effects[,2],
1:508,Random.effects[,3])
abline(h=mean(delta), col="gray", lwd=2)





