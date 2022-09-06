#!/bin/bash

echo "Before loop file contents"
read a
echo "After loop file contents"
while :; do
        b=$(hash $a 2>/dev/null && $a | tail -1) || b=$a
        echo $b
        a=$b
done
