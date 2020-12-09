from Bio import SeqIO

AAs = "aa seq after cd hit"

for seq_record in SeqIO.parse(AAs, "fasta"):
    print(len(seq_record.seq))
    if len(seq_record.seq) >= 25 and len(seq_record.seq) <= 10000:
        with open("Filtered_size&redundancy.fasta", "a") as output_handle:
            SeqIO.write(seq_record, output_handle, "fasta")
