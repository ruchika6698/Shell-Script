#!/bin/bash -x

n=$((RANDOM%2))
if [ $n = 1 ]
then
	echo "Head"
else
	echo "Tail"
fi

