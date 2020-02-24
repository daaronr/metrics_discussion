%Notes: "Variable selection for a categorical varying-coefficient model with identifications for determinants of body mass index"

%Authors Gao, Peng, Ren, Zhang


#Abstract, introduction


- Body mass case: 'considerable number of determinants have been proposed'
- Impact of these varying across demographic groups
- Shrinkage estimation technique, Variable selection procedure for the categorical varying-coefficient model

***

Yu 2012: Impact of education on BMI (note: correlational) varies by Gender age and race groups


> Common practice is to add interaction terms between between selected BMI determinants and demographic variables into a regression model

- But this requires many degrees of freedom
- Choice of determinants having varying impact is usually arbitrary

> We adopt the categorical varying-coefficient model proposed by [Li et al, 2013]

> The selection of optimal bandwidths for categorical variables provides statistical justification on the relative importance of demographic variables in terms of differencing BMI determinants' impacts

Eq 2,1

$$Y_i=X_i'\beta_0(Z_i)+\epsilon_i, i=1,...,N$$

(Li ea '13 model)

$Z_i$ Divided into relevant and irrelevant covariates; The latter have no impact on beta and are independent of other variables.

