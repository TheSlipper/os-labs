#!/bin/bash
# Argumenty: poczatkowa_miejsc, posr_miejsc, docelowa_miejsc, odl_AB, odl_BC
full_length=`expr $4 + $5`
filename=74.txt
echo "" > 74.txt
#echo "Znaleziono trase: " >> $filename
#echo "Start: $1" >> $filename
#echo "Przez: $2" >> $filename
#echo "Meta: $3" >> $filename
#echo "Odleglosc: $full_length" >> $filename

cat << EOF > $filename
Znaleziono trase:
Start: $1
Przez: $2
Meta: $3
Odleglosc: $full_length
EOF

exit 
