#!/bin/bash
echo -n "Enter your password: "
read -s passwd
echo

passwd_from_file=$(cat 81.txt)
if [ "$passwd" = "$passwd_from_file" ]; then 
	echo "Passwords are the same!"
fi
