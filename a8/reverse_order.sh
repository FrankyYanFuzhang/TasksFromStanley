#! /bin/bash
echo
echo -n "Please enter number:"
read n
sd=0
rev=""
on=$n
echo "You put number is $n"                             
while [ $n -gt 0 ] 
do
        sd=`expr $n % 10`
        n=`expr $n / 10`

        if [ "${sd}" = "0" ] && [ "${rev}" = "" ];
        then
                echo
        else
                rev="$rev$sd" ;
        fi
       
done
echo "$on in a reverse order $rev"