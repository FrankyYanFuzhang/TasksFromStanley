#!/bin/bash

# Method1:

echo "pls enter number and operator below:"
read a b c
total=$(echo "scale=2; $a$b$c" | bc)
echo "$a $b $c = $total"

# Method2:

# #!/bin/bash
# echo -n "Enter an operator and two numbers: "
# total=$(echo "scale=2; $a$oper$b" | bc)
# case $oper in
# 	+) echo "$a + $b = $total";;
# 	-) echo "$a - $b = $total";;
# 	/) echo "$a / $b = $total";;
# 	*) echo "$a x $b = $total";;
# esac