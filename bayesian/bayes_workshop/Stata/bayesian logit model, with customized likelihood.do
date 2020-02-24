cap prog drop logitll
// Write the program with the likelihood
program logitll
        version 14.1
        args lnf xb
        // compute log likelihood
        tempvar lnfj
        quietly generate double `lnfj' = ln(invlogit( `xb')) ///
                                                     if $MH_y == 1 & $MH_touse
        quietly replace `lnfj' = ln(invlogit(-`xb')) if $MH_y == 0 & $MH_touse
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

bayesmh low smoke, llevaluator(logitll) prior({low:}, flat)


// Compare with the ``default'' bayesmh approach 
bayesmh low smoke, likelihood(logit) prior({low:}, flat)
