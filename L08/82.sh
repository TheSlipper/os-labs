#!/bin/bash
# Dlaczego z podwojnymi dziala a z pojedynczymi nie?
if [[ -d $1 ]]; then
	echo "Directory"
else
	if [[ -f $1 ]]; then
		permission=$(stat -c "%a" $1 | head -c 2 | tail -c 1)
		echo -n "Your permissions to file '$1' are: "
		# if [ "$permission" = "5" ]; then
		#		echo "najlepsze!"
		# fi
		case $permission in
			7) echo "read, write and execute"
			;;
			6) echo "read and write"
			;;
			5) echo "read and execute"
			;;
			4) echo "read"
			;;
			3) echo "write and execute"
			;;
			2) echo "write"
			;;
			1) echo "execute"
			;;
		esac
	else
		echo "$1 is not valid"
		exit 1
	fi
fi
