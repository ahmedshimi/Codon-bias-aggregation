setwd("YOUR_WORKING_DIRECTORY")
getwd()
data <- as.data.frame(read_excel("Merged_Data_Human.xlsx"))
dim(data)
frustrated <- c()
for(i in 1:1048575){
  if(data$Codon[i] == "CTG" 
     | data$Codon[i] == "GTG"
     | data$Codon[i] == "GCC"
     | data$Codon[i] == "CAG"
     | data$Codon[i] == "GGC"
     | data$Codon[i] == "CGG"
     | data$Codon[i] == "AGG"
     | data$Codon[i] == "AGA"
     | data$Codon[i] == "GAG"
     | data$Codon[i] == "GAG"
     | data$Codon[i] == "AAG"
     | data$Codon[i] == "CCA"
     | data$Codon[i] == "GTC"
     | data$Codon[i] == "AAA"
     | data$Codon[i] == "AGT"
     | data$Codon[i] == "GAA"
     | data$Codon[i] == "CTT"
     | data$Codon[i] == "GTT"
     | data$Codon[i] == "CAA"
     | data$Codon[i] == "TTA"
     | data$Codon[i] == "GCG"
     | data$Codon[i] == "CGT"
     | data$Codon[i] == "TCG"
     | data$Codon[i] == "CCC"
     | data$Codon[i] == "CAC"
     | data$Codon[i] == "TAC"
     | data$Codon[i] == "GTG"
     | data$Codon[i] == "GCT")
    frustrated[i] = 1
  else
    frustrated[i] = -1
}
head(frustrated)
data["Frustration"] = frustrated

install.packages("dplyr")
library("dplyr")
CFI = as.data.frame(aggregate(data$Frustration, list(data$Gene_ID), mean))
colnames(CFI) <- c("Gene_ID", "CFI")
install.packages("plyr")
library("plyr")
merged_data = join(data, CFI, by="Gene_ID", type="left")
head(merged_data)
write.csv(merged_data,"/Users/Hannelore/Desktop/IBP/CFI.csv", row.names = FALSE)
