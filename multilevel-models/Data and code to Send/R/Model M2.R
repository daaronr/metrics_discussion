setwd("C:/Users/gk249/Downloads/MLM workshop/Data and codes")
library(arm)
library(lmerTest)

# To read .dta files in R
#install.packages("foreign")
library(foreign) 

# EXPLORE THE DATA

# Load the dataset
mydata<-read.dta("schools.dta")

# M.2: Model with level-1 explanatory variable 
M.2<-lmer(score~female+(1|schoolid), data=mydata)

summary(M.2)

fixef(M.2)

ranef(M.2)

coef(M.2)


