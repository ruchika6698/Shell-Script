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

	
if [ $x -gt $y ] && [ $x -gt $z ] && [ $x -gt $u ]
then
	echo "Max:$x"
elif [ $y -gt $x ] && [ $y -gt $z ] && [ $y -gt $u ]
then
	echo "Max:$y"
elif [ $z -gt $x ] && [ $z -gt $y ] && [ $z -gt $u ]
then
	echo "Max:$z"
elif [ $u -gt $x ] && [ $u -gt $y ] && [ $u -gt $z ]
then
	echo "Max:$u"
else
	echo " "
fi

if [ $x -lt $y ] && [ $x -lt $z ] && [ $x -lt $u ]
then
	echo "Min:$x"
elif [ $y -lt $x ] && [ $y -lt $z ] && [ $y -lt $u ]
then
	echo "Min:$y"
elif [ $z -lt $x ] && [ $z -lt $y ] && [ $z -lt $u ]
then
	echo "Min:$z"
elif [ $u -lt $x ] && [ $u -lt $y ] && [ $u -lt $z ]
then
	echo "Min:$u"
else
	echo " "
fi


