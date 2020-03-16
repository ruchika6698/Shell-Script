#!/bin/bash -x

count=0
for(( number=0; number<=100; number++ ))
do
	if [[  $number%11 -eq 0 ]] && [[ $number -ne 0 ]]
	then
 		Number[((count++))]=$number
	fi
done

echo ${Number[@]}
