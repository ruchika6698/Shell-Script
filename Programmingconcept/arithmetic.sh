#!/bin/bash -x

read -p "Enter number a:" a
read -p "Enter number b:" b
read -p "Enter number c:" c
x=$(( $a + $b * $c ))
y=$(( $a % $b + $c ))
z=$(( $c + $a / $b ))
u=$((	$a * $b + $c ))

echo $x
echo $y
echo $z
echo $u
	
