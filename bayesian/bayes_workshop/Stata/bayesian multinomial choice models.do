cd "C:\Users\gk249\Downloads\Bayesian workshop\Data and codes"

insheet using "cars.csv", clear

// Bayesian multinomial logit model
bayes: mlogit car income householdsize

// Bayesian multinomial probit model
bayes: mprobit car income householdsize

// No multinomial logit/probit in bayeshm

