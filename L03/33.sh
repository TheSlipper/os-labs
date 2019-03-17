#!/bin/sh
var="Hello, World!"
printf "$var\r\n"
printf $var | wc -c
