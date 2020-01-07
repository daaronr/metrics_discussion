cd "C:\Users\gk249\Downloads\MLM workshop\Data and codes"

use schools.dta, clear

statsby intercept=_b[_cons] slope=_b[cohort90], by(schoolid) saving(ols, replace): regress score cohort90
sort schoolid
merge schoolid using ols
drop _merge
gen yhat_ols=intercept+slope*cohort90
sort schoolid cohort90
separate score, by(schoolid)
separate yhat_ols, by(schoolid)
twoway connected yhat_ols1-yhat_ols100 cohort90 ||lfit score cohort90, clwidth(thick) clcolor(black) legend(off) ytitle(school test scores)



graph export "Individual_regression.pdf", as(pdf) replace
