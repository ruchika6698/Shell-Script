#!/bin/bash -x 

read -p "Enter a Number:" Number

for (( index=2; index<=$Number;  ))
do
	if [ $(( $Number%$index )) -eq 0 ]
	then
		echo "$index"
		Number=$Number/$index
	else
		((index++))
	fi
done

if [ $(($Number)) -ge 2 ]
then
	echo " $Number "
fi
