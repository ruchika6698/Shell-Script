
#!/bin/bash -x

args=("$@")

n=${args[0]}
a=1;
count=1
while (( $a < 256 && count <= $n ))
do
	a=$(( a*2 ))
	echo "$a"
	((count++))
done
