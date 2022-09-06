#!/bin/bash

total=$(( $(df | wc -l) + 1 ))

for (( i=2;i<$total;i++ ))
do
        echo -n "Filesystem "
        tmp=$(df | awk 'NR=="'$i'" {print $1}')
        echo -n $tmp
        echo -n " is "
        tmp=$(df | awk 'NR=="'$i'" {print $5}')
        echo -n $tmp
        echo -n " used with "
        tmp=$(df | awk 'NR=="'$i'" {print $4}')
        echo -n $tmp
        echo " KB free."
done
