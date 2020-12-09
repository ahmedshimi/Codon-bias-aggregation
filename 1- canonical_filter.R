
library(seqinr)
#Uniprot canonical sequences fasta
UniProt_canonical <- read.fasta(file = "Uniprot_2020_01_Human_proteome.fasta", as.string = TRUE, seqtype = "AA")
UniProt_canonical <- as.data.frame(unlist(UniProt_canonical))
colnames(UniProt_canonical) <- "Sequence"
#AAs from biomart (prior to CD-HIT!!!!!)
AAs <- read.fasta(file = "Sequences_analysed.fa",as.string = TRUE, seqtype = "AA")
AAs <- as.data.frame(unlist(AAs))
colnames(AAs) <- "Sequence"
AAs$Sequence <- gsub('\\*$', '', AAs$Sequence) #Remove the * at the end of sequences
#FIlter only canonical sequence for proteins
AAs <- unique(subset(AAs, Sequence %in% UniProt_canonical$Sequence))
write.fasta(as.list(AAs$Sequence), 
            rownames(AAs), 
            file.out="canonical_AAs.fasta", 
            open = "w", 
            nbchar = 60, 
            as.string = TRUE)
