cd "C:\Users\gk249\Downloads\MLM workshop\Data and codes"

use schools.dta, clear

xtmixed score female || schoolid: female, variance covariance(unstructured)

estat recov, corr

predict eta nu, reffects

egen pickone=tag(schoolid)

scatter eta nu if pickone==1, yline(0) xline(0) ///
ytitle("School random effect, slope") xtitle("School random effect, intercept")

