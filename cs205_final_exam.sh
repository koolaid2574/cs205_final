#!/bin/bash
# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like best_pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# grab file name from the first positional parameter
filename = $1
# using awk, calculate total and store in a variable
total = $(awk 'END {print NR}' $filename)
# use awk again for average hp of pokemon and store in a variable
avg_hp = $(awk '{sum += $3} END {print sum / NR}' $filename)
# do the same as before for avg attack and store it
avg_atk = $(awk '{sum += $4} END {print sum / NR}' $filename)
# now display the report
echo "# ===== SUMMARY OF DATA FILE ====="
echo "#    File name: $filename"
echo "#    Total Pokemon: $total"
echo "#    Avg. HP: $avg_hp"
echo "#    Avg. Attack: $avg_atk"
echo "# ===== END SUMMARY ====="
# ===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ===== END SUMMARY =====

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called best_pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way best_pokemon.dat is formatted.
