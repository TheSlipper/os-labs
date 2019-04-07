#!/bin/bash
printf "Enter your name: "
read name
printf "Enter your surname: "
read surname
printf "Enter your e-mail: "
read email
echo "$name $surname $email" >> 73.txt
lines=$(wc -l < 73.txt)
echo "Amount of entries: $lines"
