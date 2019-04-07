#!/bin/bash
read txtFile < 72.txt
printf "File content: "
for word in $txtFile
do printf "%s " $word
done
tokenizedVals="$(cut -d'_' -f2 <<<'$txtFile')"
echo
echo "Test: $tokenizedVals"
printf "Result of the operation: %i\r\n" `expr ${txtFile[0]} ${txtFile[1]} ${txtFile[2]}`
