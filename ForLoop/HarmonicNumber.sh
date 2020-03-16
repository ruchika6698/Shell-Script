#!/bin/bash -x

args=("$@")

Number=${args[0]}

Harmonic=1
for (( index=2; index<=$(( $Number )); index++ ))
do
	Harmonic=$( echo "scale=2; $Harmonic + 1/$index" | bc )
done 
echo "$Harmonic"
