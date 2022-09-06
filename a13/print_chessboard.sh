#!/bin/bash
read -p "enter the width : " width
for i in $(seq 1 $width)
do
for j in $(seq 1 $width)
	do
		S=$(((i+j)%2))
		if [ $S -eq 0 ]
		then
			echo -en "\033[47m " # white
		else
			echo -en "\033[40m " # black
		fi
	done
	echo -en "\033[40m" # black, ensure it exists normally
	echo "" # new line
done
