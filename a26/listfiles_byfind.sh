#!/bin/bash

dir=$(find . -type d)
# echo "${#dir}"
if [ "${dir}" = ". " ]; then
    echo "only itself"
fi

for i in $dir; do
    echo $i
done
