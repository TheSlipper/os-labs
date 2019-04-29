#!/bin/bash
# 1=beginning 2=ending 3=num
if [ $# -ne 1 ]; then
	echo "Usage: $0 beginning ending num"
	exit -1
fi

if [ "$3" -gt "$1" ] && [ "$3" -lt "$2" ]; then
	echo "In bounds... Returning 0"
	exit 0
else
	echo "Out of bounds... Returning 1"
	exit 1
fi

