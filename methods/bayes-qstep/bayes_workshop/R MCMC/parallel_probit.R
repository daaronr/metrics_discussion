mcmc_probit<-function(y=y, X=X, n=n, k=k,
	nsim=nsim, thin=thin, burn=burn){

#### Priors 
 mbeta0<-rep(0,k)				# Prior Mean for Beta
 vbeta0<-diag(10,k)			# Prior Cov of Beta (vague)
 prec0<-solve(vbeta0)			# Prec beta
 vbeta<-solve(prec0+crossprod(X,X))	# Posterior variance beta

#############
# MCMC Info #
#############
 lastit<-(nsim-burn)/thin	# Last stored value

###################
# Store MCMC draws #
####################
  Beta<-matrix(0,lastit,k)


#Initial Values
 beta<-matrix(0,k)
 z<-rep(0,n)

####################################
# MCMC ALGORITHM - GIBBS SAMPLER	#
#####################################

for (i in 1:nsim) {
  muz<-X%*%beta		
  z[y==0]<-qnorm(runif(n,0,pnorm(0,muz,1)),muz,1)[y==0]
  z[y==1]<-qnorm(runif(n,pnorm(0,muz,1),1),muz,1)[y==1]
   mbeta <- vbeta%*%(prec0%*%mbeta0+crossprod(X,z))
   beta<-matrix(rmvnorm(1,mbeta,vbeta))
 
   if (i> burn & i%%thin==0) {
    j<-(i-burn)/thin
 Beta[j,]<-c(t(beta))
}
  
 }

Results<-list(Beta=Beta)
}



