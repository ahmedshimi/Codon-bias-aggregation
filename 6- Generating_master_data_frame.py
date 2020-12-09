from Bio import SeqIO
import numpy as np
import pandas as pd
from pip._vendor.urllib3.connectionpool import xrange

gene_ids= []
gene_names =[]
Aminoacids= []
nucleotides= []
Indices=[]
Proteins= []
ids_protein = []
signalp = {}

NUCs = "coding_seq.txt"
As = "afterTargetP.fasta"
AAs= "amino_acid.fa"
file = "signalp_output.txt"

print("X")

def split(word):
    return list(word)

def tripsplit(word):
    return [word[i:i+3] for i in xrange(0, len(word), 3)]

with open(file) as handle:
    for line in handle:
        if line[0] == "E" and line[18:20] == "SP":
            signalp[line[:15]] = line[56:58]

for x,seq_record in enumerate(SeqIO.parse(As, "fasta")):
    Proteins.append(seq_record.id.split("_")[0])

flat_proteins = [item for sublist in Proteins for item in sublist]
proteins_array = np.array(Proteins)

print("X")

for x,seq_record in enumerate(SeqIO.parse(AAs, "fasta")):
    if seq_record.id.split("_")[0] in proteins_array:
        if seq_record.id.split("_")[0] in list(signalp.keys()):
            AAs = split(seq_record.seq)
            AAs = AAs[int(signalp[seq_record.id.split("_")[0]]):]
            Indices += [i for i in range(1, len(AAs) + 1)]
            Aminoacids.append(AAs)
        else:
            AAs = split(seq_record.seq)
            Indices += [i for i in range(1, len(AAs) + 1)]
            Aminoacids.append(AAs)


for x, seq_record in enumerate(SeqIO.parse(NUCs, "fasta")):
    if seq_record.id.split("|")[2] in proteins_array:
        if seq_record.id.split("|")[2] in list(signalp.keys()):
            triplets = tripsplit(seq_record.seq)
            triplets = triplets[int(signalp[seq_record.id.split("|")[2]]):]
            nucleotides.append(triplets)
            id = [seq_record.id.split("|")[0]] * len(triplets)
            name = [seq_record.id.split("|")[1]] * len(triplets)
            proteins_ids = [seq_record.id.split("|")[2]] * len(triplets)
            ids_protein.append(proteins_ids)
            gene_ids.append(id)
            gene_names.append(name)
        else:
            triplets = tripsplit(seq_record.seq)
            nucleotides.append(triplets)
            id = [seq_record.id.split("|")[0]] * len(triplets)
            name = [seq_record.id.split("|")[1]] * len(triplets)
            proteins_ids = [seq_record.id.split("|")[2]] * len(triplets)
            ids_protein.append(proteins_ids)
            gene_ids.append(id)
            gene_names.append(name)

print("X")

flat_nucleotides = [item for sublist in nucleotides for item in sublist]
flat_geneids = [item for sublist in gene_ids for item in sublist]
flat_genenames = [item for sublist in gene_names for item in sublist]
flat_aminoacids = [item for sublist in Aminoacids for item in sublist]
nucleotides_array = np.array(flat_nucleotides)
geneids_array = np.array(flat_geneids)
genenames_array = np.array(flat_genenames)
aminoacids_array = np.array(flat_aminoacids)
indices_array = np.array(Indices)
flat_proteins_ids = [item for sublist in ids_protein for item in sublist]
proteins_id_array = np.array(flat_proteins_ids)

print("X")

output_1 = np.column_stack((geneids_array, genenames_array, proteins_id_array, nucleotides_array, aminoacids_array, indices_array))
output_1_to_file = pd.DataFrame(output_1,columns=["Gene_ID","Gene_name", "Protein_ID", "Codon", "AA", "Index"])
print("X")
output_1_to_file.to_csv("Final_data.csv", index=False)






