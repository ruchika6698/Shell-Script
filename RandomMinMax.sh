#!/bin/bash -x 


max=$(((RANDOM%900)+100))
min=$(((RANDOM%900)+100))
if [ $min -ge $max ]
then
	temp=$min
	min=$max
	max=$temp
fi
echo "$max"
echo "$min"
count=0;
while [ $count != 3 ]
do
	Num=$(((RANDOM%900)+100))
	echo "$Num"
	((count++))
		if [[ $Num -gt $max ]]
		then	
			   max=$Num
      elif [[ $Num -lt $min ]]
			then	
				min=$Num
		fi
done

echo "Max is: $max"
echo "Min is: $min"
