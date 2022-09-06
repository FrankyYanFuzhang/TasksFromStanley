#!/bin/bash
c=0
cd testDir

list=$(ls)
for file in $list; do
    filelist[$c]=$file
    let c++
done

b=0
for sub in ${filelist[*]}; do
    re=""
    for ((i = 0; i < ${#sub}; i++)); do
        if [[ ${sub:$i:1} =~ [[:lower:]] ]]
        then
            r=$(echo -n ${sub:$i:1} | tr [:lower:] [:upper:])
            re="$re$r"
        elif [[ "${sub:$i:1}" =~ [[:upper:]] ]]
        then
            # echo "1"
            r=$(echo -n ${sub:$i:1} | tr [:upper:] [:lower:])
            re="$re$r"
        else
            # echo -n ${sub:$i:1}
            r=${sub:$i:1}
            re="$re$r"
        fi
    done
    echo "after replace: $re"
    mv $sub $re

done
