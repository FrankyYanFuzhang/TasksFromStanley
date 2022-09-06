#!/bin/bash

for i in {1..10}; do
    random=$(
        head /dev/urandom |tr  -dc _AcZ-a-z#$%^*_0-9 |head -c 10
        echo
    )
    echo $random
done
