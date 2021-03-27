# soal-shift-sisop-modul-1-I04-2021
# NO 1

# NO2
## 2A
Question : Steven wants to appreciate the performance of his employees so far by knowing Row ID and the largest profit percentage (if the largest profit percentage is more than 1, take the largest Row ID). To make your work easier, Clemong provides the definition of profit percentage

by the formula is Profit Percentage = (Profit : Cost Price)*100

syntax : profit = $21/($18 - $21)*100;

$21 is value from profit coloumn, $18 is sales 

if (profit >= max){max = profit;rowid =  $1;ordid =$2}

After the profit of each row is obtained, will be compared to the existing max, if it is more or equal to the max then the ordid will be taken from the column 2 rows.

## 2B
Question : Clemong has a promotional plan in Albuquerque using the MLM method. Therefore, Clemong needs a list of customer names on the 2017 transaction in Albuquerque.

{ if ($10 == "Albuquerque")
	x[$7]++
	}
  
  to find if the customer is in Albuquerque. if yes then the name of the customer (7th column) will be added to the array x
  
  for (y in x)
		{
		print y}
    
    print the name sought but if repeated it will only be printed once.
    
 ## 2C
 Question : TokoShiSop focuses on three customer segments, among others: Home Offices, Customers, and Corporates. Clemong wants to increase sales in the customer segment that has the least sales. Therefore, Clemong needs a customer segment and the number of transactions with the least amount of transactions.
 
 if (NR!=1)x[$8]++
 
 $8 is the segment coloumn , will be added to the respective array so that it can be known many each segment
 
   {
	min =x["Consumer"];
	tag = "Customer"
	for (y in x)
		if (x[y] < min){
			min = x[y];
			tag = y;
	}
  compare each segment, and will get the minimum
  
  ## 2D
  Question : TokoShiSop divides the sales region into four parts: Central, East, South, and West. Manis wants to find the region that has the least total profit and the total profit of that region.
  
  if (NR!=1)x[$13]+=$21
  
  $13 is coloumn 13 and $21 is coloumn 21. coloumn 21 will be adding to the array in coloumn 13.
  
  {
	min = x["South"];
	tag = "South"
	for (y in x)
		if (x[y] < min){
			min = x[y];
			tag = y;
	}
  compare which regions have the least total profit.
  
  # NO 3
  
  




