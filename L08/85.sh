#!/bin/bash
echo -n "Podaj nazwisko: "
read nazwisko
case "$nazwisko" in
[a-gA-G]*)
	echo "$nazwisko goes to 85a.txt"
	echo "$nazwisko" >> 85a.txt
	;;
[h-mH-m]*)
	echo "$nazwisko goes to 85b.txt"
	echo "$nazwisko" >> 85b.txt
	;;
[n-sN-s]*)
	echo "$nazwisko goes to 85c.txt"
	echo "$nazwisko" >> 85c.txt
	;;
[t-zT-Z])
	echo "$nazwisko goes to 85d.txt"
	echo "$nazwisko" >> 85d.txt
	;;
*)
	echo "Nie ma gdzie zapisac"
	exit 1
esac exit 0
