setwd("C:/Users/gk249/Downloads/MLM workshop/Data and codes")
library(arm)
library(lmerTest)

# To read .dta files in R
#install.packages("foreign")
library(foreign) 

# EXPLORE THE DATA

# Load the dataset
mydata<-read.dta("schools.dta")

mydata$discrete.score<-ifelse(mydata$score>=median(mydata$score),1,0)



# M.6: Generalized (logit) multi-level model 
M.6<-glmer(discrete.score~female+
		(1+female|schoolid), data=mydata, family=binomial(link="logit"))  

summary(M.6)

ranef(M.6)






