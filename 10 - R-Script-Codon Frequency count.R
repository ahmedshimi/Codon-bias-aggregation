library("readxl")
library("plyr")
setwd("~/Desktop/3rd sem/Bioinformatics project/")

data_GKs <- read_excel("output_GKs.xlsx")
count(data_GKs, vars = "Codon", wt_var = NULL)

data_APRs <- read_excel("output_APRs.xlsx")
count(data_APRs, vars = "Codon", wt_var = NULL)

data_APRs_GKs <- read_excel("output_GKs_APRs.xlsx")
count(data_APRs_GKs, vars = "Codon", wt_var = NULL)