from Bio import SeqIO

SignalP = "signalp_output.fasta"
All = "filtered_size&redundancy.fasta"
names_signalP = []
sequences_signalP = []

for seq_record in SeqIO.parse(SignalP, "fasta"):
    names_signalP.append(seq_record.id)

for seq_record in SeqIO.parse(All, "fasta"):
    if seq_record.id not in names_signalP:
        with open("All_signalP.fasta", "a") as output_handle:
            SeqIO.write(seq_record, output_handle, "fasta")
    else:
        for seq_record2 in SeqIO.parse(SignalP, "fasta"):
            with open("All_signalP.fasta", "a") as output_handle:
                if seq_record2.id == seq_record.id:
                    SeqIO.write(seq_record2, output_handle, "fasta")




