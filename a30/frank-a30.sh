#!/bin/bash

dir=$1

echo "Before locking"
ls -l $dir
name=$(ls $dir)
for i in $name
do
    chmod 600 $dir$i
done
echo "after locking"
ls -l $dir