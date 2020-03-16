#!/bin/bash -x

count=0
while [ $count != 10 ]
do
	Number[count]=$(((RANDOM%900)+100))	
	((count++))
done

echo "${Number[@]}"


largest=${Number[0]}
secondGreatest='unset'

for((i=1; i < ${#Number[@]}; i++))
do
  if [[ ${Number[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${Number[i]}
  elif (( ${Number[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${Number[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${Number[i]}
  fi
done

echo "secondGreatest = $secondGreatest"



smallest=${Number[0]}
secondSmallest='unset'

for((i=1; i < ${#Number[@]}; i++))
do
  if [[ ${Number[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${Number[i]}
  elif (( ${Number[i]} != $smallest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${Number[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${Number[i]}
  fi
done

echo "secondSmallest = $secondSmallest"
