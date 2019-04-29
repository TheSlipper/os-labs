#!/bin/bash
#for i in {1..$2}
if [ $# -eq 0 ]; then
	echo "No arguments supplied"
	exit 5
fi
sixes=0
rolls=0
for (( ; ; ))
do
	random_num=$(./91.sh 6 1)
	rolls=$(expr $rolls + 1)
	printf "%i," $random_num;
	if [ "$random_num" -eq "6" ]; then
		sixes=$(expr $sixes + 1)
	fi
	if [ "$sixes" -gt "8" ]; then
		break
	fi
done
echo ";Rolls: $rolls"
exit 0
