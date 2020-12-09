import numpy as np
import pandas as pd
from csv import reader

def split(word):
    return list(word)

protein_names = []
APR_values = []
indices = []
flags = []
with open('PSX_tangowindow(0).csv', 'r') as read_obj:
    csv_reader = reader(read_obj)
    for row in csv_reader:
            # row variable is a list that represents a row in csv
            protein_name = [row[0]] * (int(row[4])+2)
            APR_value = [row[3]] * (int(row[4])+2)
            index = list(range(int(row[1]),(int(row[1])+int(row[4])+2)))
            flag = []
            flag.append("Gate Keeper N")
            flag += (int(row[4])) * ["APR Residue"]
            flag.append("Gate Keeper C")
            protein_names.append(protein_name)
            APR_values.append(APR_value)
            indices.append(index)
            flags.append(flag)

flat_protein_names = [item for sublist in protein_names for item in sublist]
flat_APR_values = [item for sublist in APR_values for item in sublist]
flat_indices = [item for sublist in indices for item in sublist]
flat_flags = [item for sublist in flags for item in sublist]
protein_names_array = np.array(flat_protein_names)
APR_values_array = np.array(flat_APR_values)
indices_array = np.array(flat_indices)
flags_array = np.array(flat_flags)


print("X")

output_1 = np.column_stack((protein_names_array,indices_array,APR_values_array,flags_array))
output_1_to_file = pd.DataFrame(output_1,columns=["Protein_ID","Index", "APR_value", "Flag"])
print("X")
output_1_to_file.to_csv("Tango_data0.csv", index=False)
