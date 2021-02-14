cd "C:\Users\gk249\Downloads\MLM workshop\Data and codes"

use schools.dta, clear

xtmixed score || schoolid:, variance 

predict nu, reffects
predict nu_se, reses

list schoolid nu nu_se in 1/10

egen pickone=tag(schoolid)

list schoolid nu nu_se if pickone==1 & schoolid<=10

serrbar nu nu_se schoolid if pickone==1, scale(1.96) yline(0)

graph export "reffects_M1_Stata.pdf", as(pdf) replace


sort nu
generate schoolrank=sum(pickone)

serrbar nu nu_se schoolrank if pickone==1, scale(1.96) yline(0)

graph export "reffects_M1_Statasorted.pdf", as(pdf) replace

