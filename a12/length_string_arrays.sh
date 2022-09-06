#!/bin/bash

read -p "print the sentence: " sentence
for i in $sentence;
do 
    echo -en "Length of string (${i})\t-"
    echo "${#i}"
done