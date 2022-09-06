#!/bin/bash

read -p "enter limit for fib series: " n
num=(0 1)
i=2

greatest=0
while true; 
do
    if (( num[$i-1] <= n ));
    then
        let num[$i]=num[$i-2]+num[$i-1]
        let i++
    else
        break
    fi
    greatest=${num[$i-2]}

done

echo "greatest val = $greatest"
