from csv import reader
import csv

with open('output_GKs', 'w') as f_output:
    csv_output = csv.writer(f_output, delimiter='\t')
    with open('Merged_data.csv', 'r') as read_obj:
        csv_reader = reader(read_obj)
        for row in csv_reader:
            if (row[7] == "Gate Keeper N" or row[7] == "Gate Keeper C") :
                csv_output.writerow(row)

with open('output_GKs_50', 'w') as f_output:
    csv_output = csv.writer(f_output, delimiter='\t')
    with open('Merged_data(0).csv', 'r') as read_obj:
        csv_reader = reader(read_obj)
        for row in csv_reader:
            if ( (row[7] == "Gate Keeper N" or row[7] == "Gate Keeper C") and float(row[6]) > 50) :
                csv_output.writerow(row)

with open('output_APRs', 'w') as f_output:
    csv_output = csv.writer(f_output, delimiter='\t')
    with open('Merged_data.csv', 'r') as read_obj:
        csv_reader = reader(read_obj)
        for row in csv_reader:
            if (row[7] == "APR Residue") :
                csv_output.writerow(row)

with open('output_APRs_50', 'w') as f_output:
    csv_output = csv.writer(f_output, delimiter='\t')
    with open('Merged_data.csv', 'r') as read_obj:
        csv_reader = reader(read_obj)
        for row in csv_reader:
            if (row[7] == "APR Residue" and float(row[6]) > 50) :
                csv_output.writerow(row)





