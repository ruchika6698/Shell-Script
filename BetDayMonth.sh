#!/bin/bash -x

args=("$@")
echo $@

d=${args[0]}
m=${args[1]}

if [[ $d -ge 20 || $m -gt 3 ]] && [[ $d -le 20 || $m -lt 6 ]]
	then 
		echo "True"
	else
		echo "False"
fi
