#!/bin/awk
cat dane.csv | awk '
	{for (i = 1; i <= NF; i++) {
		if ($i != "NULL") {
			sums[i]+=$i;
			maxi=i;
		}
	}
	END{
		for(i = 1; i <= maxi; i++) {printf("%s ", sums[i])}
	}
print}'
