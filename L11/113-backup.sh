#!/bin/bash
rozmiar=$1
okret=$2
razy=0
if [ $okret -gt $rozmiar ]; then
	exit 1
fi

for (( j=1; "$j" < "$((rozmiar+1))"; j++ ))
do
	let ran=$RANDOM%2
	tab[$j]=$ran
done

for (( i=1; "$i" < "$((okret+1))"; i++ )); do
	echo "($okret) Podaj nr pola (1.. $1): "
	read odp
	if [[ $odp -gt $1 ]]; then
		let 'i = i - 1'
		echo "Zle pole"
		continue
	else
		if [[ ${tab[$odp]} -eq 1 ]]; then
			razy=$((razy+1))
			echo "Hit!"
			continue
		fi
		continue
	fi
	echo "kit"
done

echo "Wynik $razy/$okret"
echo "Statek ${tab[*]}"
