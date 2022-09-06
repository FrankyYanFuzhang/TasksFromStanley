#!/bin/bash

read -p "pls enter the string: " str
leng=${#str}
oper=$(($leng-1))
oper=${str:$oper:1}
case $oper in
        +)
                total=${str:0:1}
                for ((i=1;i<leng-1;i++))
                do
                        sub=${str:i:1}
                        total=$(echo "$total+$sub" | bc)
                done
                        echo "Sum is $total"
        ;;
        -)
                total=${str:0:1}
                for ((i=1;i<leng-1;i++))
                do
                        sub=${str:i:1}
                        total=$(echo "$total-$sub" | bc)
                done
                        echo "Sub is $total"
        ;;
				/)
                total=${str:0:1}
                for ((i=1;i<leng-1;i++))
                do
                        sub=${str:i:1}
                        total=$(echo "$total/$sub" | bc)
                done
                        echo "quotient is $total"
        ;;
        *)
                total=${str:0:1}
                for ((i=1;i<leng-1;i++))
                do
                        sub=${str:i:1}
                        total=$(echo "$total*$sub" | bc)
                done
                        echo "Mul is $total"
        ;;
esac