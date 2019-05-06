#!/bin/bash
printf "Enter file name: "
read fileName
declare -a wordArr
while IFS= read -r line
do
	for word in $line
	do
		wordArr+="$word "
	done	
done < $fileName 
echo "Word array: $wordArr"
declare -a sortedArr
wordArrLen=$(echo "$wordArr" | wc -w)
sortedArrLen=0
set $wordArr
# while [ "${#wordArr[@]}" -gt "${#sortedArr[@]}" ]
while [ "$wordArrLen" -gt "$sortedArrLen" ]
do
	val=$(cut -d' ' -f1 <<<"$@")	
	sortedArr+="$val "
	shift
	sortedArr=$(echo $sortedArr | sort)
	sortedArrLen=$((sortedArrLen + 1))
done
echo "Sorted array: $sortedArr"
