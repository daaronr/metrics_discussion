cap prog drop probitll
// Write the program with the likelihood
program probitll
        version 14.1
        args lnf xb
        // compute log likelihood
        tempvar lnfj
        quietly generate double `lnfj' = log(normal( `xb')) ///
                                                     if $MH_y == 1 & $MH_touse
        quietly replace `lnfj' = log(normal(-`xb')) if $MH_y == 0 & $MH_touse
        quietly summarize `lnfj', meanonly
        scalar `lnf' = r(sum)
        if r(N) < $MH_n {
                scalar `lnf' = .
                exit
        }
end


// Load the data and maximize the likelihood in a Bayesian fashion

cd "C:\Users\gk249\Downloads\Bayesian workshop\Data and codes"

insheet using "birthwt.csv", clear

bayesmh low smoke, llevaluator(probitll) prior({low:}, normal(0,10))


// Compare with the ``default'' bayesmh approach 
bayesmh low smoke, likelihood(probit) prior({low:}, normal(0,10))


