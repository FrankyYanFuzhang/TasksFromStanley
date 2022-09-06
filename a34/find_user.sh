#!/bin/bash

echo "Enter the user you want to search"
read uname

total=$(cat /etc/passwd | cut -f1 -d :)
mark=0
for i in $total
do
    if [ "$i" = "$uname" ]; then
        mark=1
    fi
done

if [ $mark = 1 ]; then
    echo "$uname is present"
    else
        echo "$uname not present"
fi
