library("readxl")
library("xlsx")
library("plyr")
setwd("YOUR_WORKING_DIRECTORY")
library("reshape2")


data_APRs_GKs <- read_excel("Human_frequency_Normal_GKS_APRs.xlsx")

data.df <- as.data.frame(data_APRs_GKs)

names(data.df)

subset_A <- subset(data.df, AA=="A", select= c("Codon", "Total Count", "APRs Count", "GKs count","more50_GKS_Count", "more50_APRS_Count", "GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_C <- subset(data.df, AA=="C", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_D <- subset(data.df, AA=="D", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_E <- subset(data.df, AA=="E", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference" ))
subset_F <- subset(data.df, AA=="F", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_G <- subset(data.df, AA=="G", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_H <- subset(data.df, AA=="H", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_I <- subset(data.df, AA=="I", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_K <- subset(data.df, AA=="K", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_L <- subset(data.df, AA=="L", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_N <- subset(data.df, AA=="N", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_P <- subset(data.df, AA=="P", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_Q <- subset(data.df, AA=="Q", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_R <- subset(data.df, AA=="R", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_S <- subset(data.df, AA=="S", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_T <- subset(data.df, AA=="T", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_V <- subset(data.df, AA=="V", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))
subset_Y <- subset(data.df, AA=="Y", select= c("Codon", "Total Count", "APRs Count", "GKs count", "more50_GKS_Count", "more50_APRS_Count","GKs_Fraction_difference", "APRs_Fraction_difference", "more50_GKs_Fraction_difference", "more50_APRs_Fraction_difference"))

subsets <- list(subset_A, subset_C, subset_D, subset_E, subset_F, subset_G, subset_H, subset_I, subset_K, 
                subset_L,subset_N, subset_P, subset_Q, subset_R, subset_S, subset_T, subset_V,subset_Y)

for (sub in subsets){
  for (i in 1:nrow(sub)) {
    x <- ifelse(sub[i,"APRs_Fraction_difference"]>0,
                phyper(sub[i,"APRs Count"]-1,sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["APRs Count"]),lower.tail=FALSE),
                phyper(sub[i,"APRs Count"],sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["APRs Count"]),lower.tail=TRUE))
    y <- ifelse(sub[i,"GKs_Fraction_difference"]>0,
                phyper(sub[i,"GKs count"]-1,sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["GKs count"]),lower.tail=FALSE),
                phyper(sub[i,"GKs count"],sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["GKs count"]),lower.tail=TRUE))
    to_print <-paste("APRs Hypergeometic distribution P-value for" , sub[i,"Codon"] , "is" , x , "and for GKs is" , y )
    print(to_print)
  }
}

Hypergeometric_P_values <- data.frame()

for (sub in subsets){
  for (i in 1:nrow(sub)) {
    x <- ifelse(sub[i,"APRs_Fraction_difference"]>0,
                phyper(sub[i,"APRs Count"]-1,sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["APRs Count"]),lower.tail=FALSE),
                phyper(sub[i,"APRs Count"],sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["APRs Count"]),lower.tail=TRUE))
    y <- ifelse(sub[i,"GKs_Fraction_difference"]>0,
                phyper(sub[i,"GKs count"]-1,sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["GKs count"]),lower.tail=FALSE),
                phyper(sub[i,"GKs count"],sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["GKs count"]),lower.tail=TRUE))
    z <- ifelse(sub[i,"APRs_Fraction_difference"]>0,
                phyper(sub[i,"more50_APRS_Count"]-1,sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["more50_APRS_Count"]),lower.tail=FALSE),
                phyper(sub[i,"more50_APRS_Count"],sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["more50_APRS_Count"]),lower.tail=TRUE))
    w <- ifelse(sub[i,"GKs_Fraction_difference"]>0,
                phyper(sub[i,"more50_GKS_Count"]-1,sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["more50_GKS_Count"]),lower.tail=FALSE),
                phyper(sub[i,"more50_GKS_Count"],sub[i,"Total Count"],sum(sub["Total Count"])-sub[i,"Total Count"],sum(sub["more50_GKS_Count"]),lower.tail=TRUE))
    Hypergeometric_P_values <- rbind(Hypergeometric_P_values, list(sub[i,"Codon"] , x ,  y , z , w ))
  }
}

names(Hypergeometric_P_values) <- c("Codon", "APRs P-value", "GKs P-value", "more50_APRs_P-value", "more50_GKs_P-value" )

Merged_P_values <- merge(data.df, Hypergeometric_P_values, all.x = TRUE, all.y = TRUE)

write.xlsx(Merged_P_values, "Merged_P_values.xlsx", col.names = TRUE)

