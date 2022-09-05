#!/bin/bash

for i in {1..35}; do
    mkdir "a$i"
    cd "a$i"
    touch "frank-a$i.sh"
    cd ..
done
