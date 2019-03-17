#!/bin/sh
# Kornel's Shell script
IFS=
x=`ps -U slipper -e`
echo $x

printf "\r\n"
printf "Processes: "
printf "$x" | wc -l
printf "\r\n"
