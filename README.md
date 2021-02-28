# nis2
A R package that load 2016-2018 National Inpatient Sample (NIS) data 

### Overview
The National (Nationwide) Inpatient Sample (NIS) is a large publicly available all-payer inpatient care database in the United States, containing data on more than seven million hospital stays each year.

NIS data can be purchased through online HCUP Central Distributor. For details, please read the instructions [Here](https://www.hcup-us.ahrq.gov/tech_assist/centdist.jsp)

nis2 contains load function and file specifications to load NIS data from 2016 to 2018. Currently, only SAS, STATA and SPSS load program are available on [NIS website](https://www.hcup-us.ahrq.gov/db/nation/nis/nisdbdocumentation.jsp). This package provides similar load program in R.

### Installation
```
devtools::install_github("nancyzhu24/nis2")
```

### Usage
```
#load NIS hospital data in 2016
load_nis(filepath,2016,'hospital')
```
