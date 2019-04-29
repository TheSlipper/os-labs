#!/bin/bash
#for i in {1..$2}
walls=6
bound=5
if [ $# -eq 2 ]; then
	walls=$1
	bound=$2	
fi
for i in $(seq 1 $bound)
do
	echo $(expr $(expr $RANDOM % $walls) + 1);
done
exit 0
