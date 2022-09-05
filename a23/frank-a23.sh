#!/bin/bash

name=$(cat /etc/passwd | awk -F ':' '{print $1}')

longest=""
shortest=""
max=0
min=${#name}

for i in $name; do

    if [[ ${#i} -ge max ]]; then
        max=${#i}
        longest="${i}"
    fi
    if [[ ${#i} -le min ]]; then
        min=${#i}
        shortest="${i}"
    fi

done

echo "The shortest is :  $shortest"
echo "The longest is  :  $longest"