#!/bin/bash
liczba=$((RANDOM%100))
echo "Wylosowano: $liczba"
let 'hotRangeMin = liczba - 9'
if [[ $hotRangeMin < 1 || $hotRangeMin > 99 ]]; then
	let 'hotRangeMin = 0'
fi
let 'hotRangeMax = liczba + 9'
if [[ $hotRangeMax > 99 ]]; then
	let 'hotRangeMax = 99'
fi
let 'warmRangeMin = liczba - 29'
if [[ $warmRangeMin < 1 || $warmRangeMin > 99 ]]; then
	let 'warmRangeMin = 0'
fi
let 'warmRangeMax = liczba + 29'
if [[ $warmRangeMax > 99 ]]; then
	let 'warmRangeMax = 99'
fi

while [[ 0 == 0 ]]
do
	read -p "Zgadnij liczbe: " wybor
	if [[ $wybor < 0 || $wybor > 99 ]]; then continue; fi
	
	if [[ $wybor == $liczba ]]; then
		echo "HIT"
		break
	fi
	
	if [ $wybor -ge $hotRangeMin -a $wybor -le $hotRangeMax ]; then
		echo "HOT"
		continue
	fi
	
	if [ $wybor -ge $warmRangeMin -a $wybor -le $warmRangeMax ]; then
		echo "WARM"
		continue
	fi
	
	echo "COLD"
	continue
done

exit 0
