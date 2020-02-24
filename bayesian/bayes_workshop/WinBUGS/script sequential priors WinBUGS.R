setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")

library(R2WinBUGS)

M <- 100
N<-300
set.seed(1211)
b.true <- c(-1, 2)
x.1<-rbinom(M, 1, 0.7)
x.2<-rbinom(N, 1, 0.7)

y.star1 <- b.true[1] + x.1*b.true[2] + rnorm(M)
y.star2 <- b.true[1] + x.2*b.true[2] + rnorm(N)

y.1 <- ifelse(y.star1<=0, 0, 1)
y.2 <- ifelse(y.star2<=0, 0, 1)


# Data List
sequential.data<-list(
"M"=M,
"N"=N,
"Y.1"=as.vector(y.1),
"Y.2"=as.vector(y.2), 
"x.1"=x.1,
"x.2"=x.2)


# Define the parameters
sequential.parameters<-c(
"beta"
)

# Set initial values for the paramters
set.seed(1982)
sequential.inits<-function() {
list(
beta=rnorm(2))
}

#Run the model
sequential<-bugs(sequential.data,sequential.inits,sequential.parameters,
	"sequential.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


# Attach it
attach.bugs(sequential)


#Print the results
print(sequential)

