# delimit ;

clear ;
clear matrix;


set mem 800m;

cd "C:\Users\lkarabar\Desktop\ChicagoBooth\Research\Time Use\Data\MyData\ATUS Data\Data for Publication\ALL";

use 03_subset, clear;

append using 04_subset ;

append using 05_subset ;

append using 06_subset ;

append using 07_subset ;

append using 08_subset ;

append using 09_subset ;

append using 10_subset ;


save all_atus, replace;

