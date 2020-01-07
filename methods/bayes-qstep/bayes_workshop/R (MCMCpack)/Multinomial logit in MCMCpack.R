setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")
library(MCMCpack)
library(foreign)

mydata<-read.csv("cars.csv")
names(mydata)


table(mydata$Car)


y=mydata$Car
x1=(mydata$Income-mean(mydata$Income))/sd(mydata$Income) 
x2=(mydata$Household.Size-mean(mydata$Household.Size))/sd(mydata$Household.Size)


post1 <- MCMCmnl(y ~
x1+x2, mcmc.method="IndMH", B0=0,
mcmc=10000, thin=10)
summary(post1)
plot(post1)
