#!/bin/bash
//A//
awk -F "\t" 'BEGIN {max=0}
{
 cost = $21/($18 - $21)*100;
 if (cost >= max){max = cost;ROWID =  $1;ORDID =$2}
}
END {
	print "The last transaction with the largest ", ORDID,"with a percentage of",max,"%\n"
}' Laporan-TokoShiSop.tsv > hasil.txt

//B//
awk -F "\t" 'BEGIN {
	print "The list of customer names in Albuquerque in 2017 includes :"
	}
$3 ~ /[0-9][0-9]-[0-9][0-9]-17/ {
	if ($10 == "Albuquerque")
	a[$7]++
}
	END {
		for (b in a)
		{
		print b
		}
}' Laporan-TokoShiSop.tsv >> hasil.txt


//C//
awk -F "\t" '{
	if (NR!=1)a[$8]++
	}
END	{
	min =a["Consumer"];
	tag = "Customer"
	for (b in a)
		if (a[b] < min){
			min = a[b];
			tag = b;
	}
	print "\nThe type of costumer segment with the least sales is",tag,"with",min,"transactions.\n"
} ' Laporan-TokoShiSop.tsv >> hasil.txt

//D//
awk -F "\t" '{
	if (NR!=1)a[$13]+=$21
	}
END	{
	min = a["South"];
	tag = "South"
	for (b in a)
		if (a[b] < min){
			min = a[b];
			tag = b;
	}
	printf "The region which has the total profit is %s with total profit %f",tag,min
}' Laporan-TokoShiSop.tsv >> hasil.txt


