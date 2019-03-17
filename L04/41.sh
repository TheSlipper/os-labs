#!/bin/bash
clear
cat<< END
Arch Linux / Kornel Domeradzki / 2019-03-17
Kornel Domeradzki's script for Operating System's laboratories
Please keep in mind that copy-pasting this script is theft :)
END
echo
echo
args=$(echo $@ | cut -d' ' -f1)

echo "1. Lista skopiowanych plikow: $args"

echo "2. Typy plikow z listy:"
for i in "$@"
do
	file $i | lolcat
done

echo
echo
echo "3. Liczba wierszy w plikach: "
j=0
for i in "$@"
do
	temp1=$(wc -l $i)
        echo "$temp1" | lolcat
	temp2=$(wc -l $i | cut -d' ' -f1)
	((j += temp2))
done

echo "4. Suma wierszy: $j"
