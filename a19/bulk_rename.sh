#!/bin/bash 
pre=$1
ARG=$(ls *.jpg)

for i in $ARG
do
    final="$pre$i"
    mv $i $final
done
