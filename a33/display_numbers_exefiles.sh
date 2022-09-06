#!/bin/bash
i=1
while :; do
    split=$(echo $PATH | cut -d ":" -f$i)

    if [ "$split" != "" ]; then
        
        echo "Current dir: $split"
        
        num=$(find $split -perm /u=x | wc -l)
        echo "Count: $num"
        echo
        
        ((i++))
        
    else
        break
    fi
done