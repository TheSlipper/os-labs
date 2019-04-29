#!/bin/bash
# 7
avg=0
for i in $(seq 1 $1)
do
	output=$(./92.sh 6)
	rolls=$(cut -d ";" -f 2 <<< $output)
	rolls_len=$(echo -n $rolls | wc -c)
	rolls_val=$(echo $rolls | cut -c8-$rolls_len)
	avg=$(expr $avg + $rolls_val)
done
avg=$(expr $avg / $1)
echo "Avg: $avg"
