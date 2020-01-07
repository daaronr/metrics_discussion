setwd("C:/Users/gk249/Downloads/MLM workshop/Data and codes")
library(arm)
library(lmerTest)

# To read .dta files in R
#install.packages("foreign")
library(foreign) 

# EXPLORE THE DATA

# Load the dataset
mydata<-read.dta("schools.dta")

# M.3: Model with level-1 explanatory variable & random slope
M.3<-lmer(score~female+(1+female|schoolid), data=mydata)

fixef(M.3)

ranef(M.3)

coef(M.3)

summary(M.3)

# Check
coef(M.3)[[1]][1,1]
ranef(M.3)[[1]][1,1]+fixef(M.3)[1]

coef(M.3)[[1]][1,2]
ranef(M.3)[[1]][1,2]+fixef(M.3)[2]

## Plot random effect nu
plot(ranef(M.3)$schoolid[,1], 
	xlab="School", ylab="", 
	main=expression(hat(nu[j])),cex=1.2, pch=20, ylim=c(-30,30))
segments(1:508,
ranef(M.3)$schoolid[,1]+1.95*se.ranef(M.3)$schoolid[,1],
1:508,ranef(M.3)$schoolid[,1]-1.95*se.ranef(M.3)$schoolid[,1])
abline(h=0, lwd=2, col="gray")

## Plot random effect eta
plot(ranef(M.3)$schoolid[,2], 
	xlab="School", ylab="", 
	main=expression(hat(eta[j])),cex=2, pch=20, ylim=c(-30,30))
segments(1:508,
ranef(M.3)$schoolid[,2]+1.95*se.ranef(M.3)$schoolid[,2],
1:508,ranef(M.3)$schoolid[,2]-1.95*se.ranef(M.3)$schoolid[,2])
abline(h=0, lwd=2, col="gray")

#Plot random effects

## Relationship by district
plot(ranef(M.3)[[1]][,1], ranef(M.3)[[1]][,2], xlab=expression(hat(nu)),
	ylab=expression(hat(eta)))


# Test for the significance of the random slopes
anova(M.2, M.3)


