clear 
clear matrix
clear mata
set maxvar 32000
set more off 


******* Obtaining variables for analysis (note some variables may not be needed for this specific analysis)

* WAVE 1
use "[Folder path name]\wave_1_core_data_v3.dta", clear
rename (_all), lower
keep idauniq dhsex dhdobyr dhager disex dimar hedia01-hedia10 hedim01-hedim07 hemda hedib01-hedib10 idauniq hecdf3 heada01-heada11 headb01-headb14 hehpa heiq* hehpc hesmk heska heala heacta heactb heactc hehelfb edqual fqquzm1 fqquzm2 fqquzm3 fqend cfmetm cfdatd cfdatm cfdaty cfday cfdscr cftest cfwrds rand14 cflisen cfani cfmem ncorrec nmissed nrow nclm nrowclm cfmems cfpascr cflisd cfsumb cfsumc cfsumd cfsuma cfsume cfsumf cfmscr cfend cfpmb cfpbscr cfptscr cfwho1 cfwho2 cfwho3 cfimp cfwhz1 cfwhz2 cfwhz3 cfwhz4 hean* aethnicr heala heacta heactb heactc hehelfb asoccls aeconact aftptime hepsy* 
rename * =_1
rename idauniq_1 idauniq
save "[Folder path name]\wave1c.dta"

use "[Folder path name]\wave_1_ifs_derived_variables.dta", clear
rename (_all), lower
keep idauniq marstat ecpos hours_aj inst smokerstat 
rename * =_1
rename idauniq_1 idauniq
save "[Folder path name]\wave1d.dta"


use "[Folder path name]\wave_1_financial_derived_variables.dta"
keep idauniq eqtotinc_bu_s nettotw_bu_s
rename * =_1
rename idauniq_1 idauniq
save "[Folder path name]\wave1f.dta"


* WAVE 2
clear
use "[Folder path name]\wave_2_core_data_v4.dta", clear
rename (_all), lower
keep dhsex dhdobyr dhager disex dimar hediaw1 hediaw2 hediaw3 hediaw8 hediac2 hediac3 hediac8 hedia01-hedia09 hedim01-hedim08 hemda hedib* heiq* hedids8 hedids9 idauniq hecdf3 heada01-heada10 headb01-headb13 hehpa hehpc hesmk heska heacta heactb heactc fqquzm1 fqquzm2 fqend cfmetm cfdatd cfdatm cfdaty cfday cfdscr cftest cfwrds cflisen cfani cfmem nrow cfmems cfpascr cflisd cfwho1 cfwho2 cfwho3 cfimp cfwhz1 cfwhz2 cfwhz3 nnclm nncorre nnmisse nnrow nrowcl hean* scako fqethnr heacta heactb heactc sclddr hepsy*
rename nncorre ncorrec
rename nnrow  nrow
rename nnclm  nclm
rename nnmisse nmissed
rename nrowcl nrowclm
rename * =_2
rename idauniq_2 idauniq
save "[Folder path name]\wave2c.dta"

use "[Folder path name]\wave_2_ifs_derived_variables.dta", clear
rename (_all), lower
keep idauniq edqual ecpos smokerstat 
rename * =_2
rename idauniq_2 idauniq
save "[Folder path name]\wave2d.dta", replace


use "[Folder path name]\wave_2_nurse_data_v2.dta", clear
rename (_all), lower
keep idauniq sysval diaval pulval mapval chol hdl trig ldl fglu rtin hscrp apoe hgb hba1c cfib htval wtval bmival wstval hipval
rename * =_2
rename idauniq_2 idauniq
save "[Folder path name]\wave2n.dta", replace

use "[Folder path name]\wave_2_financial_derived_variables.dta"
keep idauniq eqtotinc_bu_s nettotw_bu_s
rename * =_2
rename idauniq_2 idauniq
save "[Folder path name]\wave2f.dta"



* WAVE 3
clear
use "[Folder path name]\wave_3_elsa_data_v4.dta", clear
rename (_all), lower
keep idauniq dhsex dhdobyr dhager disex dimar hemda hediami hediast hedawan hedawmi hedawst hedacan hedacmi hedacst dhedimmi dhedimst hediaan hediami hediast dhediman dhedimmi dhedimst heiq* hedbsde hedbdad hedbdde dhedibad dhedibde idauniq hedawan hedacan hedawmi hedacmi hedawst hedacst headl96 headlba headlbe headldr headlea headlho headlho headlma headlme headlmo headlpr headlsh headlwa headlwc headlwc hehpa hehpc hesmk heska heacta heactb heactc  fqend cfmetm cfdatd cfdatm cfdaty cfday cfdscr cftest cfwrds cflisen cfani cfmem ncorrec nmissed nrow nclm nrowclm cfmems cfpascr cflisd cfimp hean* fqethnr scako heacta heactb heactc sclddr palevel hediabp hediadi hediach hepsyde scveg* scfru*
rename * =_3
rename idauniq_3 idauniq
save "[Folder path name]\wave3c.dta"

use "[Folder path name]\wave_3_ifs_derived_variables.dta", clear
rename (_all), lower
keep idauniq *edqual* ecpos smokerstat
rename * =_3
rename idauniq_3 idauniq
save "[Folder path name]\wave3d.dta", replace

use "[Folder path name]\wave_3_financial_derived_variables.dta"
keep idauniq eqtotinc_bu_s nettotw_bu_s
rename * =_3
rename idauniq_3 idauniq
save "[Folder path name]\wave3f.dta"


* WAVE 4
clear
use "[Folder path name]\wave_4_elsa_data_v3.dta", clear
rename (_all), lower
keep idauniq dhsex diagr disex dimar hedbsde hedbdde hedbdad hedibad hedibde heiq* hemda hediami hediast hedimmi hedimst hedawan  hedacan hedawmi hedacmi hedawst hedacst hedawan hedacan hedawmi hedacmi hedawst hedacst hediaan hediami hediast hediman hedimmi hedimst hedizm52 idauniq headl96 headlba headlbe headldr headlea headlho headlho headlma headlme headlmo headlpr headlsh headlwa headlwc headlwc hehpa hehpc hesmk heska heacta heactb heactc  fqend cfmetm cfdatd cfdatm cfdaty cfday cfdscr cftest cfwrds cflisen cfani cfmem ncorrec nmissed nrow nclm nrowclm cfmems cfpascr cflisd cfimp cfmscr hean* fqethnr scako heacta heactb heactc sclddr palevel hediabp hediadi hediach hepsyde scveg* scfru* indager
rename indager dhager
rename * =_4
rename idauniq_4 idauniq
save "[Folder path name]\wave4c.dta"

use "[Folder path name]\wave_4_ifs_derived_variables.dta", clear
keep idauniq *edqual* smokerstat ecpos
rename * =_4
rename idauniq_4 idauniq
save "[Folder path name]\wave4d.dta", replace

use "[Folder path name]\wave_4_nurse_data.dta", clear
keep idauniq sysval diaval pulval mapval chol hdl trig ldl fglu rtin hscrp hgb hba1c cfib htval wtval bmival wstval hipval
rename * =_4
rename idauniq_4 idauniq
save "[Folder path name]\wave4n.dta", replace

use "[Folder path name]\wave_4_financial_derived_variables.dta"
keep idauniq eqtotinc_bu_s nettotw_bu_s
rename * =_4
rename idauniq_4 idauniq
save "[Folder path name]\wave4f.dta"


* WAVE 5
clear
use "[Folder path name]\wave_5_elsa_data_v4.dta", clear
rename (_all), lower
keep idauniq dhsex diagr disex dimar hopet hopetdo hoppetca hopetbi hopetfp hopetot hemda hediami hediast hedimmi hedimst hedawan hedacan hedawmi hedacmi hedawst hedacst hedawan hedacan hedawmi hedacmi hedawst hedacst hediaan hediami hediast hediman hedimmi hedimst hedbsde hedbdde hedbdad hedibad hedibde heiq* idauniq headl96 headlba headlbe headldr headlea headlho headlho headlma headlme headlmo headlpr headlsh headlwa headlwc headlwc hehpa hehpc hesmk heska heacta heactb heactc  fqend cfdatd cfdatm cfdaty cfday cfdscr cftest cfwrds cflisen cfani cfmem cfmems cfpascr cflisd cfimp hean* scako fqethnr heacta heactb heactc sclddr palevel hediabp hediadi hediach hepsyde indager
rename indager dhager
rename * =_5
rename idauniq_5 idauniq
save "[Folder path name]\wave5c.dta"

use "[Folder path name]\wave_5_ifs_derived_variables.dta", clear
keep idauniq *edqual* smokerstat ecpos
rename * =_5
rename idauniq_5 idauniq
save "[Folder path name]\wave5d.dta", replace
clear

use "[Folder path name]\wave_5_financial_derived_variables.dta"
keep idauniq eqtotinc_bu_s nettotw_bu_s
rename * =_5
rename idauniq_5 idauniq
save "[Folder path name]\wave5f.dta"


* WAVE 6
use "[Folder path name]\wave_6_elsa_data_v2.dta", clear
rename (_all), lower
keep idauniq dhsex indager disex dimar hemda hedawan hedacan hedawmi hedacmi hedawst hedacst hediaan hediami hediast hediman hedimmi hedimst headl* hedbdde hedbdad hedbsde hedibad hedibde heiq* hediami hediast hedimmi hedimst hedawan hedacan hedawmi hedacmi hedawst hedacst  hediami hediast hedimmi hedimst head* headl96 headlba headlbe headldr headlea headlho headlho headlma headlme headlmo headlpr headlsh headlwa headlwc headlwc hesmk heska heacta heactb heactc  fqend cf* cfdatd cfdatm cfdaty cfday cfdscr cftest cfwrds cflisen cflisd cfimp hean* scako fqethnr heacta heactb heactc sclddr hediabp hediadi hediach hepsyde scveg scfru
rename indager dhager
rename * =_6
rename idauniq_6 idauniq
save "[Folder path name]\wave6c.dta"

use "[Folder path name]\wave_6_elsa_nurse_data_v2.dta", clear
rename (_all), lower
keep idauniq sys1 dias1 sys2 dias2 chol hdl trig ldl fglu rtin hscrp hgb hba1c cfib estwt ehtm bmival wstval 
rename * =_6
rename idauniq_6 idauniq
save "[Folder path name]\wave6n.dta", replace

use "[Folder path name]\wave_6_financial_derived_variables.dta"
keep idauniq eqtotinc_bu_s nettotw_bu_s
rename * =_6
rename idauniq_6 idauniq
save "[Folder path name]\wave6f.dta"

use "[Folder path name]\wave_6_ifs_derived_variables.dta", clear
keep idauniq *edqual* smokerstat ecpos
rename * =_6
rename idauniq_6 idauniq
save "[Folder path name]\wave6d.dta", replace
clear



* WAVE 7
use "[Folder path name]\wave_7_elsa_data.dta", clear
rename (_all), lower
keep idauniq indsex indager dimar hemda hedawan hedacan hedawmi hedacmi hedawst hedacst hediaan hediami hediast hediman hedimmi hedimst headl* hedbdde hedbdad hedbsde hedibad hedibde heiq* hediami hediast hedimmi hedimst hedawan hedacan hedawmi hedacmi hedawst hedacst  hediami hediast hedimmi hedimst head* headl96 headlba headlbe headldr headlea headlho headlho headlma headlme headlmo headlpr headlsh headlwa headlwc headlwc hesmk heska heacta heactb heactc  fqend cf* cfdatd cfdatm cfdaty cfday cfdscr cftest cfwrds cflisen cflisd cfimp hean* scako fqethnr heacta heactb heactc sclddr hediabp hediadi hediach hepsyde scveg scfru
rename indager dhager
rename * =_7
rename idauniq_7 idauniq
save "[Folder path name]\wave7c.dta"

use "[Folder path name]\wave_7_financial_derived_variables.dta"
keep idauniq eqtotinc_bu_s nettotw_bu_s
rename * =_7
rename idauniq_7 idauniq
save "[Folder path name]\wave7f.dta"

use "[Folder path name]\wave_7_ifs_derived_variables.dta", clear
keep idauniq *edqual* smokerstat ecpos
rename * =_7
rename idauniq_7 idauniq
save "[Folder path name]\wave7d.dta", replace
clear


* WAVE 8
use "[Folder path name]\wave_8_elsa_data_eul_v2", clear
rename (_all), lower
keep idauniq indager indsex dimar hemda hedawan hedacan hedawmi hedacmi hedawst hedacst hediaan hediami hediast hediman hedimmi hedimst headl* hedbdde hedbdad hedbsde hedibad hedibde heiq* hediami hediast hedimmi hedimst hedawan hedacan hedawmi hedacmi hedawst hedacst  hediami hediast hedimmi hedimst head* headl96 headlba headlbe headldr headlea headlho headlho headlma headlme headlmo headlpr headlsh headlwa headlwc headlwc hesmk heska heacta heactb heactc  fqend cf* cfdatd cfdatm cfdaty cfday cfdscr cftest cfwrds cflisen cflisd cfimp hean* scako heacta heactb heactc sclddr hediabp hediadi hediach hepsyde scveg scfru
rename indager dhager
rename * =_8
rename idauniq_8 idauniq
save "[Folder path name]\wave8c.dta"

use "[Folder path name]\wave_8_elsa_nurse_data_eul_v1", clear
rename (_all), lower
keep idauniq sys1 dias1 sys2 dias2 chol hdl trig ldl fglu rtin hscrp hgb hba1c cfib  
rename * =_8
rename idauniq_8 idauniq
save "[Folder path name]\wave8n.dta", replace

use "[Folder path name]\wave_8_elsa_ifs_dvs_eul_v1.dta", clear
keep idauniq *edqual* smokerstat ecpos
rename * =_8
rename idauniq_8 idauniq
save "[Folder path name]\wave8d.dta", replace
clear


* WAVE 9
use "[Folder path name]\wave_9_elsa_data_eul_v1", clear
rename (_all), lower
keep idauniq indager indsex dimar hemda hed* heiq* head* hesmk heska heacta heactb heactc  fqend cf* cfdatd cfdatm cfdaty cfday cfdscr cftest cfwrds cflisen cflisd cfimp hean* heacta heactb heactc sclddr hediabp hediadi hediach hepsyde
rename indager dhager
rename * =_9
rename idauniq_9 idauniq
save "[Folder path name]\wave9c.dta"

use "[Folder path name]\elsa_nurse_w8w9_data_eul", clear
rename (_all), lower
keep idauniq sys1 dias1 sys2 dias2 chol hdl trig ldl fglu rtin hscrp hgb hba1c cfib  
rename * =_9
rename idauniq_9 idauniq
save "[Folder path name]\wave9n.dta", replace

use "[Folder path name]\wave_9_ifs_derived_variables", clear
keep idauniq *edqual* smokerstat ecpos
rename * =_9
rename idauniq_9 idauniq
save "[Folder path name]\wave9d.dta", replace
clear


*******************************************************************************************


use "[Folder path name]\wave1c.dta"
merge 1:1 idauniq using "[Folder path name]\wave1d.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave1f.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave2c.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave2d.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave2f.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave2n.dta"
drop _merge
su idauniq
merge 1:1 idauniq using "[Folder path name]\wave3c.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave3d.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave3f.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave4c.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave4d.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave4f.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave4n.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave5c.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave5d.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave5f.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave6c.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave6d.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave6f.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave6n.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave7c.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave7d.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave7f.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave8c.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave8n.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave8d.dta"
drop _merge

merge 1:1 idauniq using "[Folder path name]\wave9c.dta"
drop _merge
merge 1:1 idauniq using "[Folder path name]\wave9d.dta"
drop _merge



save "[Folder path name]\2023 ELSA_Wave1to9.dta", replace




***************************  Analysis of incidence trends


clear 
set maxvar 32000
set more off


use "[Folder path name]\2023 ELSA_Wave1to9.dta"


****** Imputing missing values for age, sex, and education for participants who took part at each wave

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

replace age_7=age_6+2 if (age_7==. | (age_6>98 & age_6~=.)) & (indsex_7~=. | dimar_7~=.)
replace age_7=age_6+2 if age_6<95 & age_7==99
replace age_7=age_5+4 if age_7==. & (indsex_7~=. | dimar_7~=.)

replace age_8=age_7+2 if (age_8==. | (age_7>98 & age_7~=.)) & (indsex_8~=. | dimarr_8~=.)
replace age_8=age_7+2 if age_7<95 & age_8==99
replace age_8=age_6+4 if age_8==. & (indsex_8~=. | dimarr_8~=.)

replace age_9=age_8+2 if (age_9==. | (age_8>98 & age_8~=.)) & (indsex_9~=. | dimarr_9~=.)
replace age_9=age_8+2 if age_8<95 & age_9==99 
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





* Cognitive function variables recoding missing as missing


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

foreach num of numlist 1/5 7/9 {
egen zeros_`num'=anycount (cfdscr_`num' cflisen_`num' cflisd_`num' cfani_`num'), values (0, 999)
}

egen zeros_6=anycount (cfdscr_6 cflisen_6 cflisd_6), values (0, 999)



foreach num of numlist 1/5 7/9 {
	foreach var of varlist cfani_`num' cflisd_`num' cflisen_`num' cfdscr_`num' {
	recode `var' 999=.
}
}

foreach num of numlist 6 {
	foreach var of varlist  cflisd_`num' cflisen_`num' cfdscr_`num' {
	recode `var' 999=.
}
}



* Zero score on cognitive battery invalid if participant responded to fewer than 2 tests 

foreach num of numlist 1/5 7/9 {
foreach var of varlist cfani_`num' cflisd_`num' cflisen_`num' cfdscr_`num' {
recode `var' 0=. if zeros_1>=3
}
}

foreach var of varlist cfdscr_6 cflisd_6 cflisen_6 {
recode `var' 0=. if zeros_6>=2
}




** Cognitive impairment in each domain of cognitive function (memory (2 tests), orientation to time, and verbal fluency) as a standardized score of 1.5 SD below mean compared to population aged 50-80 with similar level of education

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

foreach num of numlist 1/5 7/9 {
gen cf_verbal_imp_`num'=1 if cfani_`num'<=10 & education==1
replace cf_verbal_imp_`num'=1 if cfani_`num'<=13 & education==2
replace cf_verbal_imp_`num'=1 if cfani_`num'<=14 & education==3
replace cf_verbal_imp_`num'=1 if cfani_`num'<=10 & education==0
}




** Cognitive Impairment defined based on impairment in 2 or more domains of cognitive function

foreach num of numlist 1/5 7/9{
egen ci_score_`num'=anycount(cf_date_imp_`num' cf_memory_imp_`num' cf_verbal_imp_`num'), values(1)
}

egen ci_score_6 =anycount(cf_date_imp_6 cf_memory_imp_6), values (1)


foreach num of numlist 1/9 {
gen ci_`num'=1 if ci_score_`num'>=2 & ci_score_`num'~=. & age_`num'>=50 & age_`num'~=.
}






* Informant Questionnaire for Cognitive Decline (IQcode heiq*), score above 3.6 considered dementia

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


foreach num of numlist 1/5 7/9 {
gen cfani_std_r_`num'=(cfani_`num'-17.8)/6 if education==1
replace cfani_std_r_`num'=(cfani_`num'-20.8)/6 if education==2
replace cfani_std_r_`num'=(cfani_`num'-22.6)/6 if education==3
replace cfani_std_r_`num'=(cfani_`num'-17.4)/6.2 if education==0
}

foreach num of numlist 1/5 7/9 {
replace cfani_std_r_`num'=4 if cfani_std_r_`num'>4 & cfani_std_r_`num'~=.
}


 
* Step 2: Calculating an average standardized cognitive function score 

foreach num of numlist 1/5 7/9 {
egen float cfz_r_`num' = rowmean(cfani_std_r_`num' cfdscr_std_r_`num' cflisd_std_r_`num' cflisen_std_r_`num')
}
egen float cfz_r_6 = rowmean(cfdscr_std_r_6 cflisd_std_r_6 cflisen_std_r_6)


foreach num of numlist 1/5 7/9 {
egen float cfz_r_nmiss_`num' = rownonmiss(cfani_std_r_`num' cfdscr_std_r_`num' cflisd_std_r_`num' cflisen_std_r_`num')
}
egen float cfz_r_nmiss_6 = rownonmiss(cfdscr_std_r_6 cflisd_std_r_6 cflisen_std_r_6)


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





* Non-transient impairment in one or more activities of daily living

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



*** Sensitivity analysis dementia based on impairment in 2 omains of cognitive function (excluding verbal fluency) and informant data alone


foreach num of numlist 1/9{
egen ci_score2_`num'=anycount(cf_date_imp_`num' cf_memory_imp_`num'), values(1)
}



foreach num of numlist 1/9 {
gen ci2_`num'=1 if ci_score2_`num'==2 & age_`num'>=50 & age_`num'~=.
}



**** * Step 2: Calculating an average standardized cognitive function score 

foreach num of numlist 1/9 {
egen float cfz_r2_`num' = rowmean(cfdscr_std_r2_`num' cflisd_std_r2_`num' cflisen_std_r2_`num')
}


foreach num of numlist 1/9 {
egen float cfz_r2_nmiss_`num' = rownonmiss(cfdscr_std_r2_`num' cflisd_std_r2_`num' cflisen_std_r2_`num')
}


foreach num of numlist 1/9 {
replace cfz_r2_`num'=. if cfz_r2_nmiss_`num'<2
}


* Step 3: Improvement in cognitive function score at future waves defined as 1-SD or higher on average standardized cognitive function score

gen improve2_1=cfz_r2_2-cfz_r2_1
replace improve2_1=cfz_r2_3-cfz_r2_1 if improve2_1==.

gen improve2_2=cfz_r2_3-cfz_r2_2
replace improve2_2=cfz_r2_4-cfz_r2_2 if improve2_2==.

gen improve2_3=cfz_r2_4-cfz_r2_3
replace improve2_3=cfz_r2_5-cfz_r2_3 if improve2_3==.

gen improve2_4=cfz_r2_5-cfz_r2_4
replace improve2_4=cfz_r2_6-cfz_r2_4 if improve2_4==.

gen improve2_5=cfz_r2_6-cfz_r2_5
replace improve2_5=cfz_r2_7-cfz_r2_5 if improve2_5==.

gen improve2_6=cfz_r2_7-cfz_r2_6
replace improve2_6=cfz_r2_8-cfz_r2_6 if improve2_6==.

gen improve2_7=cfz_r2_8-cfz_r2_7
replace improve2_7=cfz_r2_9-cfz_r2_7 if improve2_7==.

gen improve2_8=cfz_r2_9-cfz_r2_8


replace ci2_1=. if improve2_1>1 & improve2_1~=. & cfz_r_2>-1 & cfz_r_3>-1 & cfz_r_4>-1 & cfz_r_5>-1 & cfz_r_6>-1 &  cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci2_2=. if improve2_2>1 & improve2_2~=. & cfz_r_3>-1 & cfz_r_4>-1 & cfz_r_5>-1 & cfz_r_6>-1 &  cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci2_3=. if improve2_3>1 & improve2_3~=. & cfz_r_4>-1 & cfz_r_5>-1 & cfz_r_6>-1 &  cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci2_4=. if improve2_4>1 & improve2_4~=. & cfz_r_5>-1 & cfz_r_6>-1 &  cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci2_5=. if improve2_5>1 & improve2_5~=. & cfz_r_6>-1 &  cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci2_6=. if improve2_6>1 & improve2_6~=. & cfz_r_7>-1 & cfz_r_8>-1 & cfz_r_9>-1 
replace ci2_7=. if improve2_7>1 & improve2_7~=. & cfz_r_8>-1 & cfz_r_9>-1 
replace ci2_8=. if improve2_8>1 & improve2_8~=. & cfz_r_9>-1 




foreach num of numlist 1/9 {
gen dementia_test2_`num'=1 if iq_cind_`num'==1 | (ci2_`num'==1 & adl_prev_`num'==1)
}




**** Calculating age-standardized incidence


keep idauniq sex age_* agecat_* dementia_dx_* iq_cind_* dementia_* dementia_test_* dementia_test2_*

reshape long age_ agecat_ dementia_dx_ iq_cind_ dementia_ dementia_test_ dementia_test2_ , i(idauniq) j(wave)

drop if age_<50 
drop if age_==.





************ Age-standardised incidence of dementia detected using all components of the definition (dementia_), exluding doctor diagnosis (dementia_test_)
* 2 year epoch (stset data will create 2 year epochs from each wave to the next with incident cases recorded as _d=1, we drop _t0==. or _t0==0 to remove prevalent cases at entry to the study)


preserve

gen failure=dementia_
* gen failure=dementia_test_


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



drop if wave==6 | wave==7  | wave==9
* incidence at wave 6, 7 and wave 9 not valid due to inconsistent definition



restore



************ Sensitivity analysis Age-standardised incidence of dementia detected using solely consistent components of the definition (dementia_test2_), and doctor diagnosis (dementia_dx_)
* 2 year epoch (stset data will create 2 year epochs from each wave to the next with incident cases recorded as _d=1, we drop _t0==. or _t0==0 to remove prevalent cases at entry to the study)


preserve

gen failure=dementia_test2_
* gen failure=dementia_dx_


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



restore

