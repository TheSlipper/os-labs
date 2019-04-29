#!/bin/bash
#for i in {1..$2}
if [ $# -eq 0 ]
	then
	echo "No arguments supplied"
	exit 5
fi
for i in $(seq 1 $2)
do
	echo $(expr $(expr $RANDOM % $1) + 1);
done
exit 0
