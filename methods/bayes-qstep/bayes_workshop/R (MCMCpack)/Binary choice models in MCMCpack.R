setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")

library(MCMCpack)
data(birthwt)

names(birthwt)
birthwt

MCMCpack.Logit <- MCMClogit(low~smoke, data=birthwt)
   plot(MCMCpack.Logit)
   summary(MCMCpack.Logit)



MCMCpack.Probit <- MCMCprobit(low~smoke, data=birthwt)
   plot(MCMCpack.Probit)
   summary(MCMCpack.Probit)
