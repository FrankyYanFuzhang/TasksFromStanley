#!/bin/bash

dfStod=$(df -h | awk '{print $5}' | cut -f 1 -d % | tail -n +2 )
dfName=$(df -h | cut -f 1 -d " " | tail -n +2)

i=0
ArrayDFS=()
ArrayDFN=()
for arg in $dfStod;
do 
   ArrayDFS[$i]=`expr 100 - $arg `
#    echo ${ArrayDFS[$i]}
   let i++ 
done

i=0
for arg in $dfName;
do 
   ArrayDFN[$i]=$arg
#    echo ${ArrayDFN[$i]}
   let i++ 
done

# echo ${#ArrayDFS[*]}

for ((i=0;i<${#ArrayDFS[*]};i++));
do
    echo "Filesystem ${ArrayDFN[$i]} have less than ${ArrayDFS[$i]}% freespace"
done