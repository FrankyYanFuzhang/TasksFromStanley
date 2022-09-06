#!/bin/bash

start=$1
end=$(( $1 + $2 -1 ))
file=$3

cat -n $file | sed -n "${start},${end}p"
