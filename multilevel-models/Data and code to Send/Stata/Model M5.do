cd "C:\Users\gk249\Downloads\MLM workshop\Data and codes"

use schools.dta, clear

xtmixed score female ||_all: R.cohort90 || schoolid:,  ml variance 

predict nu eta, reffects

egen pick=tag(schoolid cohort90)

list schoolid cohort90 nu eta if pick==1 & schoolid<4


