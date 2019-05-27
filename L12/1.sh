#!/bin/awk -f
BEGIN {
	print "nr, los, roznica, kwadrat"
	for ( i = 1; i <= 41; i++)
	{
		$los=int(41 * rand())
		if ($los-i < 0)
			print i " " $los " " ($los-1) " NULL"
		else
			print i " " $los " " ($los-1) " " sprintf("%.2f", sqrt($los-i))
	}
} 
