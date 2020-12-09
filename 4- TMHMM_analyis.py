from Bio import SeqIO

TMHMM = []
file = "TMHMM.txt"
afterSignalP = "All_signalP.fasta"

with open(file) as handle:
    for line in handle:
        line=line.strip()
        TMHMM.append(line)

for seq_record in SeqIO.parse(afterSignalP, "fasta"):
    if seq_record.id not in TMHMM:
        with open("afterTMHMM.fasta", "a") as output_handle:
            SeqIO.write(seq_record, output_handle, "fasta")
