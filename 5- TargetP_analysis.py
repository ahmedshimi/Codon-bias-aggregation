from Bio import SeqIO

MT = []
file = "TargetP MT.txt"
afterTMHMM = "afterTMHMM.fasta"

with open(file) as handle:
    for line in handle:
        line=line.strip()
        MT.append(line)

for seq_record in SeqIO.parse(afterTMHMM, "fasta"):
    if seq_record.id not in MT:
        with open("afterTargetP.fasta", "a") as output_handle:
            SeqIO.write(seq_record, output_handle, "fasta")