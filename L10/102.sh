#!/bin/bash
read -p "Enter the file name: " fileName
if [ -e $fileName ]
then
	set $(sort -dfi $fileName)
	while [[ $# > 0 ]]
	do
		echo $1
		shift
	done
else
	echo "Plik nie istnieje"
	exit 1
fi
exit 0
