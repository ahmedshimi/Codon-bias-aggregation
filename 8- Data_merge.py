import pandas as pd

tango = pd.read_csv("Tango_data.csv")

master_data = pd.read_csv("Final_data.csv")

merged_data = pd.merge(master_data, tango, on=["Protein_ID", "Index"], how = 'outer')

merged_data.to_csv("Merged_data.csv", index=False)