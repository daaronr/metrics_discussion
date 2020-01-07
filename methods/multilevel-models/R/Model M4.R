setwd("C:/Users/gk249/Downloads/MLM workshop/Data and codes")
library(arm)
library(lmerTest)

# To read .dta files in R
#install.packages("foreign")
library(foreign) 

# EXPLORE THE DATA

# Load the dataset
mydata<-read.dta("schools.dta")

# M.4: Model with level-1 and level-2 explanatory variables, 
# random intercepts & random slope
M.4<-lmer(score~female+schtype+female:schtype+(1+female|schoolid), data=mydata)

summary(M.4)

ranef(M.4)

coef(M.4)


