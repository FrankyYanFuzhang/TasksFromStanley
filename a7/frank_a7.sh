#!/bin/bash
ARG=($*)
max=0
i=0

if [ ${#ARG[@]} = 0 ]; then
        echo "Error: No arguments passed"
else
        while [ "${ARG[$i]}" != "" ]; do
        if [ ${ARG[$i]} -gt $max ]; then
                max=${ARG[$i]}
        fi
        ((i++))
        done
        echo "the largest value is: $max"
fi
