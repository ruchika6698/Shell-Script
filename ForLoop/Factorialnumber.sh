#!/bin/bash -x

read -p "Enter a Number:" Number
Factorial=1;
for(( index=$Number; index!=1; index-- ))
do
	Factorial=$(( $Factorial*$index ))
done
printf "Factorial is:$Factorial"'\n'
