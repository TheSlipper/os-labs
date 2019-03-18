#!/bin/bash

echo '1. Amount of lines that begin with a hash sign: ' $(grep '^#' termcap-BSD | wc -l)
echo '2. Amount of dots in the file: ' $(grep -o '\.' termcap-BSD | wc -l)
echo '3. Amount of lines which contain ANSI or Ansi or ansi (etc.): ' $(grep -i 'ANSI' termcap-BSD | wc -l)
echo "4. Amount of lines which contain only the whole word 'bus': " $(grep -w 'bus' termcap-BSD | wc -l)
echo "5. Amount of lines in which a number occurs between some parenthesis (e.g. - (4)) : " $(grep '([0-9])' termcap-BSD | wc -l)
echo "6. Amount of lines in which between two upper-case characters a number occurs: " $(grep '[A-Z][0-9][A-Z]' termcap-BSD | wc -l)
echo "7. Amount of lines in which between two upper-case characters a vowel occurs: " $(grep '[A-Z][aeoui][A-Z]' termcap-BSD | wc -l)
echo "8. Amount of empty lines: " $(grep '^$' termcap-BSD | wc -l)
echo "9. Amount of lines in which there is only one character different from '#': " $(grep '^[^#]$' termcap-BSD | wc -l)
echo "10. Amount of lines in which '-' occurs between two lettters: " $(grep '[A-Za-z]-[A-Za-z]' termcap-BSD | wc -l)


