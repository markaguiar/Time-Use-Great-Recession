# delimit ;

clear all;
clear matrix;
set mem 800m;
set more off;



cd "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\Results Aggregate Trends";
 
use all_atus;

sum work_paper worka_paper worku_paper childcare_paper home_paper homeproduction_paper homeown_paper shopping_paper othercare_paper leisure_paper tv_paper socializing_paper sleeping_paper ep_paper otherleisure_paper other_paper education_paper civic_paper ownmedical_paper if age<=65 & age>=18 & other==0 [aw=weight_adj];
sum work_paper worka_paper worku_paper childcare_paper home_paper homeproduction_paper homeown_paper shopping_paper othercare_paper leisure_paper tv_paper socializing_paper sleeping_paper ep_paper otherleisure_paper other_paper education_paper civic_paper ownmedical_paper if age<=65 & age>=18 & other==0 &male==1 [aw=weight_adj];
sum work_paper worka_paper worku_paper childcare_paper home_paper homeproduction_paper homeown_paper shopping_paper othercare_paper leisure_paper tv_paper socializing_paper sleeping_paper ep_paper otherleisure_paper other_paper education_paper civic_paper ownmedical_paper if age<=65 & age>=18 & other==0 &male==0 [aw=weight_adj];
