#!/bin/bash

filename=$1

total=$(wc -l $filename | cut -f1 -d " ")
((total++))
echo "The total of lines is $total ！"

END=$(( $total/5*4 ))
sub=$(( $total/5 ))
start=$(( $RANDOM % $END +1 ))
end=$(( $start + $sub ))

sed -i "$start,$end c <-----------Deleted----------->" $filename

total=$(wc -l $filename | cut -f1 -d " ")
((total++))
echo "After delete random, the total of lines is $total ！"