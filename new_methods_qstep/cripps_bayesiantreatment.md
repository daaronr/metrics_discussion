%Bayesian expectation and learning who to treat
%Martin Cripps

# Motivation

Optimal expectation with a continuum of correlated arms and imperfect control (you may not get to pull an arm some day)


#Preview of results

1. Experimenter ultimately learns all the arms that ought to be pulled whatever the discount factor (unlike the discrete arms case)

2. Myopic policy (0 discount) is 'close' to optimal in limit

3. No conflict between PM and 'subjects' in the LR



#Overview

Step 1: take a sample of X subjects in population, treat the subjects, observe outcomes (multidimensional mediating characteristics)
... trying to find the right set to give the mosquito nets to

##Lit


Econometric and treatment choice: Manski, Kitigawa, Tetenov
Computer science : pattern recognition

'look at the rate the optimal regret converges to zero as sample size increases.''

Learning slow - complex class of sets ... the 'Vapnik-Chervonenkis dimension' ... an upper bound on regret

Continuity makes learning easily

Analytic function: a little but of local information can be very useful

##Approach here

PM samples each subject $x \in \chi$ sequentially (random draw)

Can treat him or not and observe outcome

PM doesn't get to choose which 'arm' to pull (as in multi-armed bandit)... here we want to find *all* good arms;

Relates to literature on 'concomitant variables' and covariates

... relates better to the doctor who gets a patient every day and has to decide whether to give a flu shot

#Model

Time is discrete; $t=0,1,..$

Set of subjects with observatio characteristics x

Before lay a true treatment set $\tilde{\theta}\in\chi$ selected, unknown to the PMo

Each period $x_t\in\chi$ is sampled, decide whether or not to treat

Outcome $y_t$ of treating $x_t$ is random and depends on whether in the policy set

- no tretmt $y_t=0$
- treated, in treatment set, $y_t=y^j$ with prob \bar{\beta_j}
- treated, not in treatment set, $y_t=y^j$ with prob \underline{\beta_j}

Objective function is to maximise the discounted benefit of treatment

The definition of the treatment set is crucial ... intersection of K hyperplanes

There is a finite dimensional paratremisation of the treatment sets, and arbitrary (full support) measure on the parameters.


... solving, one must write an 'HJB equation'


Flow of value term: short run payoff + value of information


'Limiting myopia' ... close to optimal in the LR

|- *DR:* But the setup assumes we *know* outcome from no treatment , so this doesn't apply directly to the flu shot issue ... but thinks model could be expanded to allow both types of learning

In the long run you only treat people who are optimally treated (for SR)


***

Example with 'good news learning' ... i.e., good news can only come from the treatment set

Can identify those 'certainly in the treatment set'. and for the rest one asseses a llhd of being in the treatment set

Proving that you keep sampling until you find the complete treatment set (asymptotically)

Maybe something like 'you don't learn about the marginal region until you sample it, so no updating about whether you want to sample it until you actually sample it'

Gives a proof by contradiction

i. If the learning isn't converging ('stalls'), one must attach 0 probability for X at the margin
ii. But a Bayesian learner will never update to zero

Show this using a 'martingale theorem'

Odds ratio is a martingale. ... one would have to attach 0 probability to people in the treatment set who *are* in the treatment set ... violates this martingale property because it yields an infinite expectation


#Conclusion

#Comments







