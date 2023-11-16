************ Sensitivity analysis Age-standardised incidence of dementia detected using solely consistent components of the definition (dementia_test_), and doctor diagnosis (dementia_dx_)



clear 
set maxvar 32000
set more off

use "[Folder path name]\ELSA_Wave1to9.dta"

gen sex=.
recode sex .=1 if dhsex_1==1 | dhsex_2==1 | dhsex_3==1 | dhsex_4==1 | dhsex_5==1 | dhsex_6==1 | indsex_7==1 | indsex_8==1 | indsex_9==1
recode sex .=2 if dhsex_1==2 | dhsex_2==2 | dhsex_3==2 | dhsex_4==2 | dhsex_5==2 | dhsex_6==2 | indsex_7==2 | indsex_8==2| indsex_9==2


foreach num of numlist 1/9 {
replace dhager_`num'=. if dhager_`num'<0
}

foreach num of numlist 1/9 {
gen age_`num'=dhager_`num' if dhager_`num'>0
}



replace age_2=age_1+2 if (age_2==. | (age_1>98 & age_1~=.)) & (disex_2~=. | dimar_2~=.)
replace age_2=age_1+2 if age_1<95 & age_2==99
replace age_2=age_3-2 if age_2==.  & (disex_2~=. | dimar_2~=.)

replace age_3=age_2+2 if (age_3==. | (age_2>98 & age_2~=.)) & (disex_3~=. | dimar_3~=.)
replace age_3=age_2+2 if age_2<95 & age_3==99
replace age_3=age_1+4 if age_3==. & (disex_3~=. | dimar_3~=.)
replace age_3=age_4-2 if age_3==. & (disex_3~=. | dimar_3~=.)

replace age_4=age_3+2 if (age_4==. | (age_3>98 & age_3~=.)) & (disex_4~=. | dimar_4~=.)
replace age_4=age_3+2 if age_3<95 & age_4==99
replace age_4=age_2+4 if age_4==. & (disex_4~=. | dimar_4~=.)
replace age_4=age_5-2 if age_4==. & (disex_4~=. | dimar_4~=.)

replace age_5=age_4+2 if (age_5==. | (age_4>98 & age_4~=.)) & (disex_5~=. | dimar_5~=.)
replace age_5=age_4+2 if age_4<95 & age_5==99
replace age_5=age_3+4 if age_5==. & (disex_5~=. | dimar_5~=.)

replace age_6=age_5+2 if (age_6==. | (age_5>98 & age_5~=.)) & (disex_6~=. | dimar_6~=.)
replace age_6=age_5+2 if age_5<95 & age_6==99
replace age_6=age_4+4 if age_6==. & (disex_6~=. | dimar_6~=.)

replace age_7=age_6+2 if age_7==99 & age_6<97
replace age_7=age_5+4 if age_7==99 & age_5<95 & age_6==.
replace age_7=age_3+8 if age_7==99 & age_3<91 & age_6==. & age_5==. & age_4==.
replace age_7=age_6+2 if age_7==. & (indsex_7~=. | dimar_7~=.)
replace age_7=age_5+4 if age_7==. & (indsex_7~=. | dimar_7~=.)

replace age_8=age_7+2 if age_8<=age_7 & age_7~=.
replace age_8=age_7+2 if age_8==. & (indsex_8~=. | dimarr_8~=.)
replace age_8=age_6+4 if age_8==. & (indsex_8~=. | dimarr_8~=.)

replace age_9=age_8+2 if age_9<=age_8 & age_8~=.
replace age_9=age_8+2 if age_9==. & (indsex_9~=. | dimarr_9~=.)
replace age_9=age_7+4 if age_9==. & (indsex_9~=. | dimarr_9~=.)



****** Five-year age-groups

foreach num of numlist 1/9 {
gen agecat_`num'=0 if age_`num'<35 & age_`num'~=.
recode agecat_`num' .=1 if age_`num'>=35 & age_`num'<40 & age_`num'~=.
recode agecat_`num' .=2 if age_`num'>=40 & age_`num'<45 & age_`num'~=.
recode agecat_`num' .=3 if age_`num'>=45 & age_`num'<50 & age_`num'~=.
recode agecat_`num' .=4 if age_`num'>=50 & age_`num'<55 & age_`num'~=.
recode agecat_`num' .=5 if age_`num'>=55 & age_`num'<60 & age_`num'~=.
recode agecat_`num' .=6 if age_`num'>=60 & age_`num'<65 & age_`num'~=.
recode agecat_`num' .=7 if age_`num'>=65 & age_`num'<70 & age_`num'~=.
recode agecat_`num' .=8 if age_`num'>=70 & age_`num'<75 & age_`num'~=.
recode agecat_`num' .=9 if age_`num'>=75 & age_`num'<80 & age_`num'~=.
recode agecat_`num' .=10 if age_`num'>=80 & age_`num'<85 & age_`num'~=.
recode agecat_`num' .=11 if age_`num'>=85 & age_`num'<90 & age_`num'~=.
recode agecat_`num' .=12 if age_`num'>=90 & age_`num'~=.
}





*education

mvdecode edqual_*, mv(-9=.)
mvdecode edqual_*, mv(-8=.)
mvdecode edqual_*, mv(-1=.)
mvdecode edqual_*, mv(-6=.)
mvdecode edqual_*, mv(-2=.)

foreach num of numlist 1/9 {
gen edqual_r_`num'=edqual_`num'
}


foreach var of varlist edqual_r_1 edqual_r_2 edqual_r_3 edqual_r_4 edqual_r_5 edqual_r_6 edqual_r_7 edqual_r_8 edqual_r_9 {
recode `var' 1=3 2=3  3=2 4=2 5=2 6=1 7=1
}


gen education=edqual_r_9
replace education=edqual_r_8 if education==.
replace education=edqual_r_7 if education==.
replace education=edqual_r_6 if education==.
replace education=edqual_r_5 if education==.
replace education=edqual_r_4 if education==.
replace education=edqual_r_3 if education==.
replace education=edqual_r_2 if education==.
replace education=edqual_r_1 if education==.

recode education .=0

label define education 1 "No qualification" 2 "High school level" 3 "University level" 0 "missing"
label values education education





**************************** Cognitive function variables recoding missing as missing


foreach num of numlist 1/5 7/9 {
mvdecode cfani_`num' cflisd_`num' cflisen_`num' cfdscr_`num', mv(-9=.)
mvdecode cfani_`num' cflisd_`num' cflisen_`num' cfdscr_`num', mv(-8=.)
mvdecode cfani_`num' cflisd_`num' cflisen_`num' cfdscr_`num', mv(-1=.)
mvdecode cfani_`num' cflisd_`num' cflisen_`num' cfdscr_`num', mv(-2=.)
mvdecode cfani_`num' cflisd_`num' cflisen_`num' cfdscr_`num', mv(99=.)
mvdecode cfani_`num' cflisd_`num' cflisen_`num' cfdscr_`num', mv(98=.)
mvdecode cfani_`num' cflisd_`num' cflisen_`num' cfdscr_`num', mv(88=.)
}

foreach num of numlist 6 {
mvdecode cflisd_`num' cflisen_`num' cfdscr_`num', mv(-9=.)
mvdecode cflisd_`num' cflisen_`num' cfdscr_`num', mv(-8=.)
mvdecode cflisd_`num' cflisen_`num' cfdscr_`num', mv(-1=.)
mvdecode cflisd_`num' cflisen_`num' cfdscr_`num', mv(-2=.)
mvdecode cflisd_`num' cflisen_`num' cfdscr_`num', mv(99=.)
mvdecode cflisd_`num' cflisen_`num' cfdscr_`num', mv(98=.)
mvdecode cflisd_`num' cflisen_`num' cfdscr_`num', mv(88=.)
}



foreach num of numlist 1/5 7/9 {
	foreach var of varlist cfani_`num' cflisd_`num' cflisen_`num' cfdscr_`num' {
	recode `var' .=999 if age_`num'~=.
}
}

foreach num of numlist 6 {
	foreach var of varlist  cflisd_`num' cflisen_`num' cfdscr_`num' {
	recode `var' .=999 if age_`num'~=.
}
}


****** Zero scores on cognitive tests considered invalid if participant responded to fewer than 2 tests on the cognitive battery

*Counting the number of missing and zero responses on cognitive tests

foreach num of numlist 1/9 {
egen zeros_`num'=anycount (cfdscr_`num' cflisen_`num' cflisd_`num'), values (0, 999)
}




foreach num of numlist 1/9 {
	foreach var of varlist cflisd_`num' cflisen_`num' cfdscr_`num' {
	recode `var' 999=.
}
}




* Zero score on cognitive battery invalid if participant responded to fewer than 2 tests 

foreach num of numlist 1/9 {
foreach var of varlist cflisd_`num' cflisen_`num' cfdscr_`num' {
recode `var' 0=. if zeros_1>=2
}
}



****** Cognitive impairment in each domain of cognitive function (memory (2 tests), orientation to time, and verbal fluency) as a standardized score of 1.5 SD below mean

foreach num of numlist 1/9 {
gen cf_date_imp_`num'=1 if cfdscr_`num'<=2 & education==1
replace cf_date_imp_`num'=1 if cfdscr_`num'<=3 & education==2
replace cf_date_imp_`num'=1 if cfdscr_`num'<=3 & education==3
replace cf_date_imp_`num'=1 if cfdscr_`num'<=3 & education==0
}


foreach num of numlist 1/9 {
gen cf_memory_imp_`num'=1 if (cflisen_`num'<=3 & education==1) | (cflisd_`num'<=1 & education==1)
replace cf_memory_imp_`num'=1 if (cflisen_`num'<=3 & education==2) | (cflisd_`num'<=2 & education==2)
replace cf_memory_imp_`num'=1 if (cflisen_`num'<=4 & education==3) | (cflisd_`num'<=2 & education==3)
replace cf_memory_imp_`num'=1 if (cflisen_`num'<=4 & education==0) | (cflisd_`num'<=2 & education==0)
}



***************************** Cognitive Impairment defined based on impairment in 2 or more domains of cognitive function

foreach num of numlist 1/9{
egen ci_score_`num'=anycount(cf_date_imp_`num' cf_memory_imp_`num'), values(1)
}



foreach num of numlist 1/9 {
gen ci_`num'=1 if ci_score_`num'>=2 & ci_score_`num'~=. & age_`num'>=50 & age_`num'~=.
}




* Informany Questionnaire for Cognitive Decline (IQcode heiq*)

foreach num of numlist 1/9 {
mvdecode heiq*_`num', mv(-9=.)
mvdecode heiq*_`num', mv(-8=.)
mvdecode heiq*_`num', mv(-1=.)
}


rename heiqa_* notheiqa_*

foreach num of numlist 1/9 {
egen float iqscore_`num' = rowmean(heiqb_`num' heiqc_`num' heiqd_`num' heiqe_`num' heiqf_`num' heiqg_`num' heiqh_`num' heiqi_`num' heiqj_`num' heiqk_`num' heiql_`num' heiqm_`num' heiqn_`num' heiqo_`num' heiqp_`num' heiqq_`num')
}

foreach num of numlist 1/9 {
egen float iqscore_missing_`num' = rowmiss(heiqb_`num' heiqc_`num' heiqd_`num' heiqe_`num' heiqf_`num' heiqg_`num' heiqh_`num' heiqi_`num' heiqj_`num' heiqk_`num' heiql_`num' heiqm_`num' heiqn_`num' heiqo_`num' heiqp_`num' heiqq_`num')
}

foreach num of numlist 1/9 {
replace iqscore_`num'=. if iqscore_missing_`num'>=5
}

foreach num of numlist 1/9 {
gen iq_cind_`num'=1 if iqscore_`num'>=3.6 & iqscore_`num'~=. & age_`num'>=50 
}



* Doctor diagnosed dementia at each wave


egen byte dementia_dx_1 = anymatch(hedib01_1 hedib02_1 hedib03_1 hedib04_1 hedib05_1 hedib06_1 hedib07_1 hedib08_1 hedib09_1 hedib10), values(8, 9)
egen byte dementia_dx_2 = anymatch(hedib01_2 hedib02_2 hedib03_2 hedib04_2), values(8, 9)
egen byte dementia_dx_3 = anymatch(dhedibad_3 dhedibde_3), values(1)

foreach num of numlist 4/9 {
egen byte dementia_dx_`num' = anymatch(hedibad_`num' hedibde_`num'), values(1)
}





************* Removing transient impairments in cognitive impairment

* Step 1: Calculating standardised test results compared with the population aged 50-80 without a diagnosis of dementia and based on education level  

foreach num of numlist 1/9 {
gen cfdscr_std_r_`num'=-2.13 if education==1 & cfdscr_`num'==0
replace cfdscr_std_r_`num'=-1.93 if education==1 & cfdscr_`num'==1
replace cfdscr_std_r_`num'=-1.6 if education==1 & cfdscr_`num'==2
replace cfdscr_std_r_`num'=-0.64 if education==1 & cfdscr_`num'==3
replace cfdscr_std_r_`num'=1.64 if education==1 & cfdscr_`num'==4
replace cfdscr_std_r_`num'=-2.4 if education==2 & cfdscr_`num'==0
replace cfdscr_std_r_`num'=-2.24 if education==2 & cfdscr_`num'==1
replace cfdscr_std_r_`num'=-1.95 if education==2 & cfdscr_`num'==2
replace cfdscr_std_r_`num'=-0.93 if education==2 & cfdscr_`num'==3
replace cfdscr_std_r_`num'=1.64 if education==2 & cfdscr_`num'==4
replace cfdscr_std_r_`num'=-2.49 if education==3 & cfdscr_`num'==0
replace cfdscr_std_r_`num'=-2.32 if education==3 & cfdscr_`num'==1
replace cfdscr_std_r_`num'=-2.01 if education==3 & cfdscr_`num'==2
replace cfdscr_std_r_`num'=-0.98 if education==3 & cfdscr_`num'==3
replace cfdscr_std_r_`num'=1.64 if education==3 & cfdscr_`num'==4
replace cfdscr_std_r_`num'=-1.9 if education==0 & cfdscr_`num'==0
replace cfdscr_std_r_`num'=-1.8 if education==0 & cfdscr_`num'==1
replace cfdscr_std_r_`num'=-1.7 if education==0 & cfdscr_`num'==2
replace cfdscr_std_r_`num'=-1.0 if education==0 & cfdscr_`num'==3
replace cfdscr_std_r_`num'=1.64 if education==0 & cfdscr_`num'==4
}



foreach num of numlist 1/9 {

gen cflisen_std_r_`num'=(cflisen_`num'-5.1)/1.6 if education==1
replace cflisen_std_r_`num'=(cflisen_`num'-5.9)/1.6 if education==2
replace cflisen_std_r_`num'=(cflisen_`num'-6.3)/1.6 if education==3
replace cflisen_std_r_`num'=(cflisen_`num'-6.4)/1.6 if education==0
}


foreach num of numlist 1/9 {
gen cflisd_std_r_`num'=(cflisd_`num'-3.6)/1.9 if education==1
replace cflisd_std_r_`num'=(cflisd_`num'-4.5)/1.9 if education==2
replace cflisd_std_r_`num'=(cflisd_`num'-5.0)/1.9 if education==3
replace cflisd_std_r_`num'=(cflisd_`num'-5.3)/1.9 if education==0
}



 
* Step 2: Calculating an average standardized cognitive function score 

foreach num of numlist 1/9 {
egen float cfz_r_`num' = rowmean(cfdscr_std_r_`num' cflisd_std_r_`num' cflisen_std_r_`num')
}


foreach num of numlist 1/9 {
egen float cfz_r_nmiss_`num' = rownonmiss(cfdscr_std_r_`num' cflisd_std_r_`num' cflisen_std_r_`num')
}


foreach num of numlist 1/9 {
replace cfz_r_`num'=. if cfz_r_nmiss_`num'<2
}


* Step 3: Improvement in cognitive function score at future waves defined as 1-SD or higher on average standardized cognitive function score

gen improve_1=cfz_r_2-cfz_r_1
replace improve_1=cfz_r_3-cfz_r_1 if improve_1==.

gen improve_2=cfz_r_3-cfz_r_2
replace improve_2=cfz_r_4-cfz_r_2 if improve_2==.

gen improve_3=cfz_r_4-cfz_r_3
replace improve_3=cfz_r_5-cfz_r_3 if improve_3==.

gen improve_4=cfz_r_5-cfz_r_4
replace improve_4=cfz_r_6-cfz_r_4 if improve_4==.

gen improve_5=cfz_r_6-cfz_r_5
replace improve_5=cfz_r_7-cfz_r_5 if improve_5==.

gen improve_6=cfz_r_7-cfz_r_6
replace improve_6=cfz_r_8-cfz_r_6 if improve_6==.

gen improve_7=cfz_r_8-cfz_r_7
replace improve_7=cfz_r_9-cfz_r_7 if improve_7==.

gen improve_8=cfz_r_9-cfz_r_8



*** Step 4: Removing transient impairments in cognitive function from the definition of dementia

replace ci_1=. if improve_1>1 & improve_1~=. & cfz_r_2>-1 & cfz_r_3>-1 & cfz_r_4>-1 & cfz_r_5>-1 & cfz_r_6>-1 &  cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci_2=. if improve_2>1 & improve_2~=. & cfz_r_3>-1 & cfz_r_4>-1 & cfz_r_5>-1 & cfz_r_6>-1 &  cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci_3=. if improve_3>1 & improve_3~=. & cfz_r_4>-1 & cfz_r_5>-1 & cfz_r_6>-1 &  cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci_4=. if improve_4>1 & improve_4~=. & cfz_r_5>-1 & cfz_r_6>-1 &  cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci_5=. if improve_5>1 & improve_5~=. & cfz_r_6>-1 &  cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci_6=. if improve_6>1 & improve_6~=. & cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci_7=. if improve_7>1 & improve_7~=. & cfz_r_8>-1 & cfz_r_9>-1 
replace ci_8=. if improve_8>1 & improve_8~=. & cfz_r_9>-1 





******************** Non-transient impairment in one or more activities of daily living

egen byte adl_1 = anymatch(headb01_1-headb14_1), values(1, 2, 3, 4, 5, 6)
egen byte adl_2 = anymatch(headb01_2-headb13_2), values(1, 2, 3, 4, 5, 6)

foreach num of numlist 3/9 {
egen byte adl_`num' = anymatch( headlba_`num' headlbe_`num' headldr_`num' headlea_`num' headlwa_`num' headlwc_`num' ), values(1)
}


egen byte adl_inf_1=rownonmiss(headb01_1-headb14_1)
egen byte adl_inf_2 = rownonmiss(headb01_2-headb13_2)
foreach num of numlist 3/9 {
egen byte adl_inf_`num' = rownonmiss( headlba_`num' headlbe_`num' headldr_`num' headlea_`num' headlwa_`num' headlwc_`num' )
}

foreach num of numlist 1/9 {
recode adl_`num' 0=. if adl_inf_`num'==0 
}


gen adl_prev_1=1 if adl_1==1
recode adl_prev_1 1=. if adl_2==0 & adl_3~=1

gen adl_prev_2=1 if adl_2==1
recode adl_prev_2 1=. if adl_3==0 & adl_4~=1 & adl_1==0

gen adl_prev_3=1 if adl_3==1
recode adl_prev_3 1=. if adl_4==0 & adl_5~=1 & adl_2==0

gen adl_prev_4=1 if adl_4==1
recode adl_prev_4 1=. if adl_5==0 & adl_6~=1  & adl_3==0

gen adl_prev_5=1 if adl_5==1
recode adl_prev_5 1=. if adl_6==0 & adl_7~=1 & adl_4==0

gen adl_prev_6=1 if adl_6==1
recode adl_prev_6 1=. if adl_7==0  & adl_8~=1 & adl_5==0

gen adl_prev_7=1 if adl_7==1
recode adl_prev_7 1=. if adl_8==0 & adl_9~=1 & adl_6==0

gen adl_prev_8=1 if adl_8==1
recode adl_prev_8 1=. if adl_9==0  & adl_7==0

gen adl_prev_9=1 if adl_9==1




****************** Dementia (bias test is the dementia excluding doctor diagnosis from the definition)



foreach num of numlist 1/9 {
gen dementia_`num'=1 if dementia_dx_`num'==1 | iq_cind_`num'==1 | (ci_`num'==1 & adl_prev_`num'==1)
}

foreach num of numlist 1/9 {
gen dementia_test_`num'=1 if iq_cind_`num'==1 | (ci_`num'==1 & adl_prev_`num'==1)
}




************************************************************************* Calculating age-standardized incidence


keep idauniq sex age_* agecat_* dementia_dx_* iq_cind_* dementia_* dementia_test_*

reshape long age_ agecat_ dementia_dx_ iq_cind_ dementia_ dementia_test_ , i(idauniq) j(wave)

drop if age_<50 
drop if age_==.





************ Age-standardised incidence of dementia detected using all components of the definition
* 2 year epoch (stset data will create 2 year epochs from each wave to the next with incident cases recorded as _d=1, we drop _t0==. or _t0==0 to remove prevalent cases at entry to the study)



gen failure=dementia_test_


stset wave, id(id) failure(failure)
tab _d
drop if _t0==. | _t0==0
tab _d
recode _d .=0

gen n=1 if age_~=.
drop if wave==1 

gen fu_time=_t-_t0

collapse (sum) _d n fu_time, by(sex wave agecat)



******* Age standardisation

gen p=_d/fu_time

gen d_stand=p*1798400 if sex==1 &agecat_==4
replace d_stand=p*1576600 if d_stand==. & sex==1 &agecat_==5
replace d_stand=p*1652700 if d_stand==. & sex==1 &agecat_==6
replace d_stand=p*1324900 if d_stand==. & sex==1 &agecat_==7
replace d_stand=p*1028000 if d_stand==. & sex==1 &agecat_==8
replace d_stand=p*810600 if d_stand==. & sex==1 &agecat_==9
replace d_stand=p*557200 if d_stand==. & sex==1 &agecat_==10
replace d_stand=p*295700 if d_stand==. & sex==1 &agecat_==11
replace d_stand=p*118400 if d_stand==. & sex==1 &agecat_==12
replace d_stand=p*1826600 if d_stand==. & sex==2 &agecat_==4
replace d_stand=p*1614000 if d_stand==. & sex==2 &agecat_==5
replace d_stand=p*1714100 if d_stand==. & sex==2 &agecat_==6
replace d_stand=p*1401100 if d_stand==. & sex==2 &agecat_==7
replace d_stand=p*1141000 if d_stand==. & sex==2 &agecat_==8
replace d_stand=p*976700 if d_stand==. & sex==2 &agecat_==9
replace d_stand=p*788100 if d_stand==. & sex==2 &agecat_==10
replace d_stand=p*532700 if d_stand==. & sex==2 &agecat_==11
replace d_stand=p*321900 if d_stand==. & sex==2 &agecat_==12

collapse (sum) _d n d_stand fu_time, by(wave)

gen age_stand=d_stand/56170

gen p=_d/n
gen se=sqrt(p*(1-p)/n)

gen lci_stand=((p-(1.96*se))/p)*age_stand
gen uci_stand=((p+(1.96*se))/p)*age_stand






drop if wave==6 | wave==9
* incidence at wave 6 and wave 9 not valid

twoway (connected age_stand wave), ymtick(0(2)10)


