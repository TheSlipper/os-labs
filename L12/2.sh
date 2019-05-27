#!/bin/awk -f
# BEGIN{ sums, maxi}
BEGIN {maxi1=0;maxi2=0;maxi3=0;maxi4=0;suma1=0;suma2=0;suma3=0;maxi4=0}
{	for (i = 1; i <= NF; i++) {
		if (i%1 == 0 && $i != "NULL") {
			suma1+=$i;
			maxi1+=1;
		}
		if (i%2 == 0 && $i != "NULL") {
			suma2+=$i;
			maxi2+=1;
		}
		if (i%3 == 0 && $i != "NULL") {
			suma3+=$1;
			maxi3+=1;
		}
		if (i%4 == 0 && $i != "NULL") {
			suma4+=$1;
			maxi4+=1;
		}
	}	

	
}
	END{
		printf("Suma 1: %i ", suma1);
		printf("Srednia 1: %i\n", suma1/maxi1);
		printf("Suma 2: %i ", suma2);
		printf("Srednia 2: %i\n", suma2/maxi2);
		printf("Suma 3: %i ", suma3);
		printf("Srednia 3: %i\n", suma3/maxi3);
		printf("Suma 4: %i ", suma4);
		printf("Srednia 4: %i\n", suma4/maxi4);
		
	}
# print
