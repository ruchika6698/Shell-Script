#!/bin/bash -x

STAKE=100
GOAL=200
BROKE=0

bets=0
win=0
loss=0

read -p "Enter a trials:" trial

for (( index=1; index<=$trial; index++ ))
do
	cash=$STAKE
	while [[ $cash -gt $BROKE && $cash -lt $GOAL ]]
	do
		(( bets++ ))
		if [[ $((RANDOM%2)) -eq 1 ]]
		then
			(( cash++ ))
		else
			(( cash-- ))
		fi
	done

	if [[ $cash -eq $GOAL ]]
	then
		(( win++ ))
	else
		(( loss++ ))
	fi
done

printf "Number of times you Win: $win"'\n'
printf "Number of times you lost:$loss"'\n'
