#!/bin/bash -x

count=0
sum=0

while [ $count != 5 ]
do
	Num=$((RANDOM%100))
		if [ $((Num/10)) -ge 1 ]
		then	
				printf "$Num"'\n'
				((count++))
				sum=$(($sum+$Num))
		fi
done
printf "The sum of 5 Random Numbers: $sum "'\n' 
avg=$(echo "scale=2; $sum/$count" | bc)
echo "Average of 5 Random Numbers :$avg"
