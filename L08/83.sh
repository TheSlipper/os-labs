#!/bin/bash
# 1=beginning 2=ending 3=num
if [ "$3" -gt "$1" ] && [ "$3" -lt "$2" ]; then
	echo "In bounds... Returning 0"
else
	echo "Out of bounds... Returning 1"
fi

