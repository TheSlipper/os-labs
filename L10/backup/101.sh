#!/bin/bash
filename=$1
while IFS= read -r line
do
	size=${#line}
	echo "Line content: $line"
	echo "Line size: $size"
done < "$filename"
