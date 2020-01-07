# Load Packages
library(coda)
library(mvtnorm)
library(here)


# Load Data
birthwt<-read.csv(here("bayes_workshop","birthwt.csv"))

birthwt[1:3,]

# Set up data
X<-cbind(1, birthwt$smoke) #for lhs of model 
y<- birthwt$low
n<-nrow(X)	
k<-ncol(X)


#### Priors 
 mbeta0<-rep(0,k)				# Prior Mean for Beta
 vbeta0<-diag(10,k)			# Prior Cov of Beta (vague) (note, in a real application we would use a much larger value)
 prec0<-solve(vbeta0)			# precision term
 vbeta<-solve(prec0+crossprod(X,X))	# Posterior variance of beta; remember it is using the variance of the lhs variables 

#############
# MCMC Info #
#############
 nsim<-5000  # MCMC Iterations
 thin<-5         	# Thinning Interval; don't save every iteration for inference save every 5th one; because close-ly spaced values may be correlated
 
 burn<-nsim/2   		 # Burn-in #... how many to drop for 'inference'... give it time to reach the stationary state, to use when we consider the properties of the estimates in summarising the posterior and evaluating the model 
 
 lastit<-(nsim-burn)/thin	# Last stored value; number of draws I am saving for inference
 
 nchains<-3 # 3 completely independent processes

###################
# Store MCMC draws #
########n###########
 
  Beta<-array(0,c(lastit,k,nchains))
 colnames(Beta)<-c("Intercept", "Smoke")


####################################
# MCMC ALGORITHM - GIBBS SAMPLER	#
#####################################

for (l in 1:nchains) {

#Initial Values
 beta<-matrix(0,k)
 z<-rep(0,n)				# Latent Normal Variable

for (i in 1:nsim) { #at each iteration
  muz<-X%*%beta		#the 'y*' in the probit (latent)... using that  beta ... generates one per obs
  z[y==0]<-qnorm(runif(n,0,pnorm(0,muz,1)),muz,1)[y==0] #probit-specific
  z[y==1]<-qnorm(runif(n,pnorm(0,muz,1),1),muz,1)[y==1]
   mbeta <- vbeta%*%(prec0%*%mbeta0+crossprod(X,z)) #computing the posterior
   beta<-matrix(rmvnorm(1,mbeta,vbeta)) #random multivariate normal vector, with posterior mean and variance computed above (?)
 
   if (i> burn & i%%thin==0) { #here is the part where we drop and keep stuff
    j<-(i-burn)/thin
 Beta[j,,l]<-c(t(beta))
}
  if (i%%1000==0) print(c(paste("chain=",l,sep=" "),paste("iteration=",i,sep="")))
 }

}


# Check Convergence
gelman.diag(mcmc.list(as.mcmc(Beta[,,1]), as.mcmc(Beta[,,2]), as.mcmc(Beta[,,3])))


BETA<-rbind(Beta[,,1],Beta[,,2],Beta[,,3])

# Posterior Summaries
cbind(colMeans(BETA), HPDinterval(as.mcmc(BETA), p=0.95))

