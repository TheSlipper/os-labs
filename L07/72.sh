#!/bin/bash
read txtFile < 72.txt
printf "File content: "
A=$(cut -d' ' -f2 <<< $txtFile)
B=$(cut -d' ' -f3 <<< $txtFile)
OPERATOR=$(cut -d' ' -f1 <<< $txtFile)
printf "Result of the operation: %i\r\n" `expr $A $OPERATOR $B`
