#!/bin/bash
printf "Liczby: %i i %i\r\n" $1 $2
printf "Suma: %i\r\n" $(expr $1 + $2);
printf "Roznica liczb: %i\r\n" $(expr $1 - $2);
printf "Iloczyn: %i\r\n" $(expr $1 \* $2);
printf "Iloraz: %i\r\n" $(expr $1 / $2);
printf "Reszta z dzielenia: %i\r\n" $(expr $1 % $2);


