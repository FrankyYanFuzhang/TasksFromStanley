#!/bin/bash

file=$1
echo "Before loop file contents"
cat $file
echo "After loop file contents"
tail -f $file >> $file
