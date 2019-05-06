#!/bin/bash
if [[ $# == 0 ]]; then
	echo "Incorrect argument count"
	exit 1
fi

let "suma = 0"
let "index = 1"
while [[ $# > 0 ]]
do
	if [ $((index%2)) -eq 0 ]; then
		liczba=$1
		let "suma -= liczba"
	else
		liczba=$1
		let "suma += liczba"
	fi
	shift
	let "index += 1"
done
echo "Suma = $suma"
exit 0
