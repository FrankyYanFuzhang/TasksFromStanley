#! /bin/bash

read -p "pls input: " num
m=1; n=1
while true;
do
	for (( i=1;i<=$n;i++ ))
	do
		if [ $m == $((num+1)) ];then
			break
		fi
		echo -en "$m\t"
		((m=m+1))
	done
	echo
	((n++))
	if [ $m == $((num+1)) ]; then
		break
	fi
done
