#!/bin/bash

name=$(find $(pwd) -name "*.swp")

for i in $name
do
    echo "swp file found $i"
    rm $i
done
