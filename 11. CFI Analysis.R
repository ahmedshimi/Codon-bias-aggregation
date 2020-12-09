setwd("YOUR_WORKING_DIRECTORY")
library("plyr")
install.packages("ggplot2")
library("ggplot2")
data_nonAPR <- read.csv("HUMAN_non_APR_Only_CFI.csv")
data_APR <- read_excel("Book1.xlsx")

count_non = (aggregate((data_nonAPR$CFI), list(data_nonAPR$Codon), mean)
count_non <- count_non[-c(21),]
typeof(data_nonAPR$CFI)
x <- c("Codon", "CFI_count")
colnames(count_non) <- x
ggplot(count_non, aes(x=Codon, y=CFI_count)) + geom_point()

count_apr = (aggregate(as.integer(data_APR$CFI), list(data_APR$Codon), mean))
typeof(data_APR$CFI)
x <- c("Codon", "CFI_count")
colnames(count_apr) <- x
ggplot(count_apr, aes(x=Codon, y=CFI_count)) + geom_point()

group = rep("NON_APR", each=61)
non_apr = as.data.frame(cbind(count_non, group))

group = rep("APR", each=61)
apr_apr = as.data.frame(cbind(count_apr, group))

final <- rbind(non_apr,apr_apr)
ggplot(final, aes(x=Codon, y=CFI_count)) +
  geom_point(aes(colour = group))
final$group

