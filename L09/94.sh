#!/bin/bash
if [ ! -d "backups" ]; then
	mkdir backups	
fi
file_list=$(ls note*)
file_arr=($file_list)
file_len=${#file_arr[@]}
index=0
echo $file_list

while [ "$file_len" -gt "$index" ]
do
	echo ${file_arr[$index]}
	cp ${file_arr[$index]} backups/
	index=$(expr $index + 1)
done
