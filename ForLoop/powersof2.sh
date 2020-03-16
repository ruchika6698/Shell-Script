#!/bin/bash -x

args=("$@")

n=${args[0]}
a=1;
for (( i=1; i<=$n; i++ ))
do
		a=$(( a*2 ))
		echo "$a"
done
