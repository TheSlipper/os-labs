#!/bin/bash
if [ $# -eq 0 ]; then
	echo "Incorrect argument count"
	exit 1
fi

let 'index = 1'

while [[ $# > 0 ]]; do
	if [ $((index%2)) -eq 1 ]; then
		if [ -f $1 ]; then
			staraNazwa=$1
			if [ $# -ge 2 ]; then
				if [ -e $2 ]; then
					nowaNazwa=$2
					mv $staraNazwa $nowaNazwa
				fi
			fi
		fi
	fi
	shift
	let 'index += 1'
done

exit 0
