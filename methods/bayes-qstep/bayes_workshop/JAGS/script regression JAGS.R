setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")

# load library that interfaces R with JAGS
library(rjags)

# Simulate data for a linear regression
n<-2000
x<-rbinom(n, 1, 0.7)
X<-cbind(1,x)
beta<-c(0.7, 1.2)
y<-X%*%beta+rnorm(n)



## NOW WE START USING WINBUGS

# Data List
regression.data<-list(
"n"=n,
"y"=as.vector(y), 
"x"=x)


# Define the parameters
regression.parameters<-c(
"beta", "sigma2"
)

# Set initial values for the paramters
set.seed(1982)
regression.inits<-function() {
list(
beta=rnorm(2), precision=runif(1,0,1)
)
}



jags.regression <- jags.model( file = "regression.bug", 
	data=regression.data, inits=regression.inits, n.chains=1, n.adapt=500 )


regression <- coda.samples( jags.regression, regression.parameters, n.iter=10000 )

summary(regression)


# Easy to access & manipulate the parameters
beta.1<-regression[[1]][,1]
beta.1

beta.2<-regression[[1]][,2]
beta.2

sigma2<-regression[[1]][,2]
sigma2

mean(beta.2)
sd(beta.2)
quantile(beta.2,c(0.05,0.95))

par(mfrow=c(1,2))
hist(beta.1, main="Posterior draws of intercept", xlab="")
hist(beta.2, main="Posterior draws of slope", xlab="")

par(mfrow=c(1,1))
hist(sigma2, main=expression(paste("Posterior draws of ", sigma^2)), xlab="")



## Only 1 chain...regression diagnostics?
regression.1chain<-bugs(regression.data,regression.inits,regression.parameters,
	"regression.bug",
	n.chains=1, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


# Attach it
attach.bugs(regression.1chain)
print(regression.1chain)

heidel.diag(as.mcmc(beta[,1]))
heidel.diag(as.mcmc(beta[,2]))
heidel.diag(as.mcmc(sigma2))



# Compare the ``fit'' of regression vis-a-vis a simpler model with 
# only a constant term

# Data List
regression.simple.data<-list(
"n"=n,
"y"=as.vector(y))


# Define the parameters
regression.simple.parameters<-c(
"beta", "sigma2"
)

# Set initial values for the paramters
set.seed(1982)
regression.simple.inits<-function() {
list(
beta=rnorm(1), precision=runif(1,0,1)
)
}


#Run the model
regression.simple<-bugs(regression.simple.data,regression.simple.inits,regression.simple.parameters,
	"regressionsimple.bug",
	n.chains=3, n.iter=500, debug=TRUE, 
	#n.chains=3, n.iter=150000, n.burnin=5000,
	#bugs.directory="C:/WinBUGS14")
	bugs.directory="//isad.isadroot.ex.ac.uk/UOE/User/Desktop/WinBUGS14")


# Attach it
attach.bugs(regression.simple)


#Print the results
print(regression.simple)

regression$DIC
regression.simple$DIC

# Is the difference between DICs > 3?
regression.simple$DIC- regression$DIC >3

# The model that includes x as a predictor is ``better''

df<-cbind(y,x)
df<-data.frame(df)
names(df)<-c("y", "x")
write.csv(df, file="linear.csv")



