#!/bin/bash -x

count=0
while [ $count != 10 ]
do
	Number[count]=$(((RANDOM%900)+100))	
	((count++))
done

echo "${Number[@]}"

for((i=0; i < ${#Number[@]}; i++))
do
	for((j=$i+1; j<${#Number[@]}; j++))
	do
		if [[ ${Number[i]} -gt ${Number[j]} ]]
  		then
			temp=${Number[i]}
			Number[i]=${Number[j]}
			Number[j]=$temp
		fi
	done
done
echo ${Number[@]}
size=${#Number[@]}
size1=$((size-2))
size2=$((size-9))
echo "secondGreatest = ${Number[size1]}"

echo "secondSmallest = ${Number[size2]}"
