setwd("C:/Users/gk249/Downloads/Bayesian workshop/Data and codes")
library(MCMCpack)

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


Oprobit.MCMCpack <- MCMCoprobit(y ~ x1 + x2)
summary(Oprobit.MCMCpack)


Estimates<-matrix(0, nrow=dim(Oprobit.MCMCpack)[2], ncol=6)
rownames(Estimates)<-c("Intercept", "x1", "x2", "cutpoint 1", "cutpoint2")
colnames(Estimates)<-c("Mean", "Sd", "95.Low", "90.Low", "90.High", "95.High")

for (j in 1:dim(Oprobit.MCMCpack)[2]){
Estimates[j,]<-c(mean(Oprobit.MCMCpack[,j]), sd(Oprobit.MCMCpack[,j]),
	quantile(Oprobit.MCMCpack[,j], c(0.025,0.05, 0.95, 0.975)))

}


Estimates

df<-cbind(y, x1, x2)
df<-data.frame(df)
names(df)<-c("y", "x1", "x2")
write.csv(df, file="ordinal.csv")
