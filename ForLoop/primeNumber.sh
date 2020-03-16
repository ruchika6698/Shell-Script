#!/bin/bash -x

read -p "Enter a Number:" Number

for ((number = 1 ; number <= $Number ; number++))
do
	count=0
	for((iter=2;iter<=$number/2;iter++))
	do
		if((number%iter==0))
		then
			((count++))
		fi
	done
	if ((count==0 && number!=1))
	then
		echo $number
	fi
done
