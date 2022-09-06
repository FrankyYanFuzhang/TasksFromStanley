#!/bin/bash

file=$1

echo "1 - Lower to upper"
echo "2 - Uower to lower"
read -p "pls choose an option: " op

case $op in
1)
    file_new="${file}_new"
    tr 'a-z' 'A-Z' <$file >$file_new
    rm $file
    mv $file_new $file
    ;;
2)
    file_new="${file}_new"
    tr 'A-Z' 'a-z' <$file >$file_new
    rm $file
    mv $file_new $file
    ;;
*)
    echo "out of option"
    ;;
esac

cat $file
