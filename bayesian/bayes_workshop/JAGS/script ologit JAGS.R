setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")
library(rjags)

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


jags.ologit <- jags.model( file = "ologit.bug", 
	data=ologit.data, inits=ologit.inits, n.chains=1, n.adapt=500 )


ologit <- coda.samples( jags.ologit, ologit.parameters, n.iter=10000 )


summary(ologit)

