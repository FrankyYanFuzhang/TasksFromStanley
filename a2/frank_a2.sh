#! /bin/bash

read -p "please input a number:  " nu

for (( i=1; i<=${nu}; i++ ))
do
	for (( j=1;j<=$i;j++))
	do	
		echo -en "${j}\t"
	done
	echo 
done