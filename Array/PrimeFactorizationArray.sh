#!/bin/bash -x 

read -p "Enter a Number:" number

count=0
for (( index=2; index<=$number;  ))
do
	if [ $(( $number%$index )) -eq 0 ]
	then
		#echo "$index"
		Number[((count++))]=$index
		number=$((number/index))
	else
		((index++))
	fi
done

echo ${Number[@]}
 
