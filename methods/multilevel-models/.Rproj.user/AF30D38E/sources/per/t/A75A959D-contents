setwd("C:/Users/gk249/Downloads/MLM workshop/Data and codes")
library(arm)
library(lmerTest)

# To read .dta files in R
#install.packages("foreign")
library(foreign) 

# EXPLORE THE DATA

# Load the dataset
mydata<-read.dta("schools.dta")

# M.5: Non-nested multi-level model 
M.5<-lmer(score~female+(1|schoolid)+(1|cohort90), data=mydata)

summary(M.5)

ranef(M.5)






