#!/bin/bash -x

read -p "Enter a Number:" Number

count=0;
for(( index=2; index<$Number; index++ ))
do 
	if [[ $Number%$index -eq 0 ]]
	then
		((count++))
	fi
done

if [[ count -eq 0 ]]
then
	printf "NUmber is Prime Number"'\n'
else
	printf "Number is not prime Number"'\n'
fi
