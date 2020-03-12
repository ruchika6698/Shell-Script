#!/bin/bash -x

x=$((10+RANDOM%10)) 
y=$((10+RANDOM%10))
z=$(( $x + $y ))
printf $z
