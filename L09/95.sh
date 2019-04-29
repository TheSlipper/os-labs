#!/bin/bash
argc=$#
for i in $@
do
	listing=$(ls -l $i)
	permissions=$(cut -d " " -f 1 <<< $listing)
	echo $permissions
	if [[ ! $permissions == *"x"* ]]; then
		echo "Can't run! :o"
		chmod +x $i
	fi
done
