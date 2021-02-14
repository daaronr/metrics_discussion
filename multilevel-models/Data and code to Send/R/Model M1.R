setwd("C:/Users/gk249/Downloads/MLM workshop/Data and codes")

# To read .dta files in R
#install.packages("foreign")
library(foreign) 

# EXPLORE THE DATA

# Load the dataset
mydata<-read.dta("schools.dta")

# Check out the variables included in the dataset
names(mydata)


# Characteristics of the variables included in the dataset
str(mydata)

#Take a look at the first 10 observations in the dataset
mydata[order(mydata$caseid),][1:10,]

# Number of students (level-1)
length(unique(mydata$caseid))

# Number of schools (level-2)
length(unique(mydata$schoolid))

# Number of students by school (range)
range(table(mydata$schoolid))

# Install and load "lme4" package to do multi-level analysis
#install.packages("arm")
library(arm)
library(lmerTest)

# M.1: The most basic model
M.1<-lmer(score~(1|schoolid), data=mydata)

summary(M.1)

# List the random effects of each school
ranef(M.1)

# Obtain the fixed effects
fixef(M.1)

# List the random intercepts( random + fixed) effects of each school
coef(M.1)


# Random intercept for the first school
coef(M.1)[[1]][1,1]

# Random effect for the first school
ranef(M.1)[[1]][1,1]

# Fixed effect + random effect for the first school
fixef(M.1)+ranef(M.1)[[1]][1,1]


# Random intercept for the second school
coef(M.1)[[1]][2,1]

# Random effect for the second school
ranef(M.1)[[1]][2,1]

# Fixed effect + random effect for the second school
fixef(M.1)+ranef(M.1)[[1]][2,1]


## Plot the school random effects
plot(as.matrix(ranef(M.1)$schoolid), 
	xlab="School", ylab="", pch=20, 
 main=expression(nu[j]), cex.main=2.5, cex=1.5)
abline(h=0)


## Plot the school random intercepts
plot(as.matrix(coef(M.1)$schoolid), 
	xlab="School", ylab="", pch=20, 
 main=expression(alpha[j]), cex.main=2.5, cex=1.5)
abline(h=fixef(M.1))
mtext(expression(delta), at=fixef(M.1), side=4, cex=2.5)


## Now recover the standard errors of the random effects
se.ranef(M.1)


# Plot the school random effects, accounting for uncertainty
plot(as.matrix(ranef(M.1)$schoolid), 
	xlab="School", ylab="", pch=20, ylim=c(-30,30),
main=expression(hat(nu[j])), cex.main=2.5)
segments(1:508,
as.matrix(ranef(M.1)$schoolid+1.95*as.matrix(se.ranef(M.1)$schoolid)),
1:508,as.matrix(ranef(M.1)$schoolid-1.95*as.matrix(se.ranef(M.1)$schoolid)))
abline(h=0, col="gray", lwd=2)


# Same plot, ordered according to the estimated random effects
df<-cbind(rownames(ranef(M.1)[[1]]), ranef(M.1)[[1]], se.ranef(M.1)[[1]])
colnames(df)<-c("schoolid", "Raneff", "Raneff.se")
df<-df[order(df$Raneff),]
df<-cbind(df,
c(1:dim(df)[[1]]))
colnames(df)[4]<-"rank"
df<-df[order(df$schoolid),]

plot(df$rank, df$Raneff, type="n", xlab="Schools (ranked)",
 ylab="", xaxt='n', ylim=c(-30,30),
main=expression(hat(nu[j])), cex.main=2.5)
segments(df$rank, df$Raneff-1.96*df$Raneff.se, 
	df$rank, df$Raneff+1.96*df$Raneff.se)
axis(1, at=df$rank,labels=df$schoolid, tick=FALSE)
abline(h=0, col="gray", lwd=2)


# COMPARE THE MULTI-LEVEL AGAINST THE SINGLE-LEVEL model
# Fit a single-level model (command ``lm'')
M.0<-lm(score~1, data=mydata)

# Compare the fit of the two models
anova(M.1, M.0)







