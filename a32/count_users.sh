#!/bin/bash

if [ -z "$*" ];then
    min=500
    max=10000
else
    min=$1
    max=$2      
fi

AUG=$(cat /etc/passwd | cut -f3 -d :)

sum=0

for i in $AUG; do
    if [[ $i -ge min && $i -le max ]]; then
        let sum++
    fi
done

echo "Total count of user ID between $min to $max is: $sum"
