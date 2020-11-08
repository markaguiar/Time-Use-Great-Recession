# Time-Use-Great-Recession

***Data Instructions***

In this document we describe: (i) the steps one has to follow to obtain
the micro-level dataset from the American Time Use Survey (ATUS) used in
Aguiar, Hurst and Karabarbounis (2012); (ii) the generation of the
state-level datasets; (iii) instructions how to replicate the paper’s
results.

**1. Main Data Files**

a\) “**all\_atus.dta”**: contains the merged 2003-2010 micro-level
dataset from the American Time Use Survey (ATUS). Section 2 describes
how to obtain the dataset and the time use categories.

b\) “**state\_datasets.xls”**: contains all the time use categories
aggregated at the state-period level. Depending on the specific way we
have aggregated the samples and the definitions of the samples we take
various versions of the state-level dataset. These versions are
described in detail in Section 3.

**General Note:** In some cases you have to alter the directory paths
used in our codes so that you can match the directory paths in your
computer.

**2. Getting the Micro Data and Creating the “all\_atus.dta” Dataset**

The process below leads to a data file which we call “all\_atus.dta”.

1)  Go to the American Time Use Survey (ATUS) website. Click the tab
    “ATUS Data Files.” Select a year, e.g. 2010
    (<http://www.bls.gov/tus/datafiles_2010.htm>).

2)  For each “year”, where year = 2003, 2004, …, 2010, download the 5 do
    files and the 5 dat files. The do files are: “atusact\_year.do”,
    “atuscps\_year.do”, “atusresp\_year.do”, “atusrost\_year.do”, and
    “atuswho\_year.do”. The dat files are: “atusact\_year.dat”,
    “atuscps\_year.dat”, “atusresp\_year.dat”, “atusrost\_year.dat”, and
    “atuswho\_year.dat”.

3)  For each year, save the do files in a folder called “Basic Do Files”
    and save the dat files in a folder called “Basic Original Data
    Files”. If you use alternative names for these folders, then you
    will need to make some minor modifications to the directory paths
    relative to those we have used in our codes.

4)  For each year, create two additional folders. The one folder is
    called “Data Creation” and contains the do file “format\_year.do”
    that extracts the micro data and codes the time use categories. The
    other is called “Basic Transformed Data Files”. This is the folder
    where all dta files will be saved.

5)  For each year run the 5 do files contained in the “Basic Do Files”
    folder. To run these you have to modify the 5 do files so that the
    directories where the do files are located and the directories where
    the created dta files will be placed match the directories in your
    computer. This process will generate 5 corresponding dta files,
    which will be saved in the “Basic Transformed Data Files” folder.

6)  Run the “format\_year.do” file located in the “Data Creation”
    folder. Again, modify the do file in order to match the directories
    in your computer. This will give you a “year\_subset.dta” file. All
    the time use categories defined in the Appendix of the paper are
    called “timeuse\_paper” in our codes. For example, the leisure
    variable is called “leisure\_paper.”

7)  Place all the “year\_subset.dta” files in one folder (in our codes
    this folder is called ALL). Run the merge.do file located in the ALL
    directory to merge all years in one dataset.

8)  The output of this process is a merged 2003-2010 file called
    “all\_atus.dta”. You can reproduce all results below starting from
    the “all\_atus.dta” dataset.

**3. Getting the State-Level Dataset**

Our results can be reproduced using the “all\_atus.dta” that was created
from the underlying micro-level ATUS dataset (see Section 2). All the
state-level datasets are placed in an excel file called
“state\_datasets.xls”. Depending on the specific way we have aggregated
the samples and the definitions of the samples we take various versions
of the state-level dataset. Each version of the dataset corresponds to a
different spreadsheet in the “state\_datasets.xls” file. Each
spreadsheet also has a corresponding dta file. For example, the dataset
“1865\_base” is located in the first spreadsheet of the
“state\_datasets.xls” file and we have also created the corresponding
STATA data file called “state\_1865\_base.dta”. The datasets and the
codes to create these datasets are given below:

1)  “state\_1865\_base.dta”: This is our base dataset. To create this
    dataset we use the “all\_atus.dta” dataset and we run the program
    “generator\_1865\_base.do”.

2)  “state\_1865\_employed.dta”: This is the dataset of the employed
    only. To create this dataset we have used the “all\_atus.dta”
    dataset and we run the program “generator\_1865\_employed.do”.

3)  “state\_1865\_unempADJ.dta”: This is the dataset in which we have
    re-weighted the micro-level observations in order to reproduce the
    official BLS unemployment rates at the state-period level. To obtain
    this dataset, run “generator\_1865\_unempADJ.do”. The program uses
    the “all\_atus.dta” dataset and the “urate2.dta” dataset.

4)  “state\_1865\_men.dta”: This is the dataset where the aggregation at
    the state level is constructed based only on the sample of men. To
    obtain the dataset, run the code “generator\_1865\_men.do”. The
    program uses the “all\_atus.dta” dataset.

5)  “state\_1865\_women.dta”: This is the dataset where the aggregation
    at the state level is constructed based only on the sample of women.
    To obtain the dataset, run the code “generator\_1865\_women.do”. The
    program uses the “all\_atus.dta” dataset.

6)  “state\_1865\_married.dta”: This is the dataset where the
    aggregation at the state level is constructed based only on the
    sample of married. To obtain the dataset, run the code
    “generator\_1865\_married.do”. The program uses the “all\_atus.dta”
    dataset.

7)  “state\_1865\_marriedANDspouseemp.dta”: This is the dataset where
    the aggregation at the state level is constructed based only on the
    sample of married with an employed spouse. To obtain the dataset,
    run the file “generator\_1865\_marriedANDspouseemp.do”. The program
    uses the “all\_atus.dta” dataset.

8)  “state\_1865\_singles.dta”: This is the dataset where the
    aggregation at the state level is constructed based only on the
    sample of singles. To obtain the dataset, run the code
    “generator\_1865\_singles.do”. The program uses the “all\_atus.dta”
    dataset.

9)  “state\_1865\_oneyear.dta”: This is the dataset in which we
    aggregate at the year-state level (instead of the two-year level).
    To obtain this dataset, we use the “all\_atus.dta” dataset and we
    run “generator\_1865\_oneyear.do”.

10) “state\_all\_base.dta”: This is the dataset in which we aggregate at
    the state-period level using all respondents, including those aged
    15-17 and 65-85, except for respondents with unclassified answers.
    To obtain this dataset, we use the “all\_atus.dta” dataset and we
    run “generator\_all\_base.do”.

11) “state\_allunclass\_base.dta”: This is the dataset in which we
    aggregate at the state-period level using all respondents, including
    those respondents with unclassified answers. To obtain this dataset,
    we use the “all\_atus.dta” dataset and we run
    “generator\_allunclass\_base.do”.

12) “state\_1865\_demo.dta”: This is the dataset that adjusts individual
    time use for demographic variables and then aggregates at the
    state-period level. To create this dataset we have used the
    “all\_atus.dta” dataset and we run the program
    “generator\_1865\_demo.do”.

**4. Reproducing the Results of the Paper**

Table 1 (Columns 1-5): Run the file “table1\_aggregatetrendsall.do”.
This program uses the “all\_atus.dta” file. See below for Column 6 of
Table 1.

Table 2 (Columns 1-5): Run the file “table1\_aggregatetrendsmen.do”.
This program uses the “all\_atus.dta” file. See below for Column 6 of
Table 2.

Table 3: For column 1, divide each time use category in column 1 of the
Appendix Table B.1 by (168-31.62). For columns 2-8, run the file
“table3\_baseresults.do”. This program uses the “state\_1865\_base.dta”
dataset.

Table 4: Run the file “table4\_decomposition.do”. For column 5, the
program uses the “state\_1865\_employed.dta” dataset. For columns 2-4
and 7-8, run the program “Table4.m”. Column 6 is derived using equation
(10) in the text.

Table 5: Run the file “table5\_measurement.do”. For columns 1-2 the
program uses the “state\_1865\_unempADJ.dta” dataset. For columns 3-4
the program uses the “state\_1865\_base.dta” dataset.

Table 6: Run the file “table6\_subperiods.do”. The program uses the
“state\_1865\_base.dta” dataset.

Table 7: Run the file “table7\_robustness.do”. The program uses the
“state\_1865\_base.dta” dataset, the “state\_1865\_men.dta” dataset, the
“state\_1865\_women.dta” dataset, the “state\_1865\_married.dta”
dataset, the “state\_1865\_marriedANDspouseemp.dta” dataset, and the
“state\_1865\_singles.dta” dataset.

Table B.1: Run the file “tableB1\_summarystats.do”. This program uses
the “all\_atus.dta” file.

Table B.2: Run the codes used to reproduce Table 1
(“table1\_aggregatetrendsall.do”) and Table 2
(“table1\_aggregatetrendsmen.do”).

Table B.3: Run the file “tableB3\_summaryWork.do”. This program uses the
“state\_1865\_base.dta” dataset.

Table B.4: Run the file “tableB4\_summaryurate.do”. This program uses
the “state\_1865\_base.dta” dataset.

Table B.5: Run the file “tableB5\_summaryHomeLeisureChange.do”. This
program uses the “state\_1865\_base.dta” dataset.

Table B.6: Run the file “tableB6\_standarderrors.do”. The program uses
the “state\_1865\_base.dta” dataset.

Table B.7: Run the code “tableB7\_robustness.do”. The code uses the
datasets “state\_1865\_base.dta”, “state\_all\_base.dta”,
“state\_allunclass\_base.dta” and “state\_1865\_oneyear.dta”.

Table B.8: Run the code “tableB8\_demoresults.do”. The code uses the
datasets “state\_1865\_base.dta” and “state\_1865\_demo.dta”.

Figures 1-3: Run the file “Figures1to3.m”. The file uses the
“aggregate\_trends.xls” file. The “aggregate\_trends.xls” file can be
constructed by running the do file called
“figures1to4\_aggregatetrends.do”. In turn, the
“figures1to4\_aggregatetrends.do” uses the “all\_atus.dta” dataset.

Figure 4 and Columns 6 of Tables 1-2: Run the file
“Figure4\_Column6Table1to2.m”. The file uses the “aggregate\_trends.xls”
file. The “aggregate\_trends.xls” file can be constructed by running the
do file called “figures1to4\_aggregatetrends.do”. In turn, the
“figures1to4\_aggregatetrends.do” uses the “all\_atus.dta” dataset.

Figures 5 and 6: Run the program “figures5and6.do”. The program uses the
“state\_1865\_base.dta” dataset.
