#!/bin/bash
read -p "enter the number to addition: " a b
total=$(echo "scale=2; $a+$b" | bc)
echo "Answer is ${total}"