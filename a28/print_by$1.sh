#!/bin/bash

arr=($@)

only1(){
        local arr_1=($@)
        if [ ${#arr_1[@]} -gt 0 ];then
                echo $1
                unset arr_1[0]
                only1 ${arr_1[*]}
        fi
}

only1 ${arr[*]}
