#!/bin/bash

read -p "Enter limit for fib series: " n

num=(0 1 1)
i=3

while [[ $i -lt $n ]]; do
    let num[$i]=num[$i-2]+num[$i-1]
    let i++
done

for i in "${num[@]}"; do
    
    if (( $i > $n )); then
        break
    elif [ $i != 0 ];then
        printf "%-4s" .
    fi

    printf $i

done
