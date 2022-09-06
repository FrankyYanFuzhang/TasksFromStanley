#!/bin/bash
ARG=($*)
echo "1.  Ascending"
echo "2.  Descending"
read -p "Pls select an option: " option

case $option in
    1) 
        new=$(echo ${ARG[*]} | tr ' ' '\n' | sort -n)
        echo $new;;
    2) 
        new=$(echo ${ARG[*]} | tr ' ' '\n' | sort -rn)
        echo $new;;
esac
