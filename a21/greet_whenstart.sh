#!/bin/bash

# How to set?
# 1. sudo mv test.sh /etc/init.d/
# 2. cd /etc/init.d/
# 3. chomod +750 test.sh
# 4. sudo update-rc.d test.sh defaults

Hour=$(date +%H)
echo $Hour
case $Hour in
    [5-12]) 
        echo "Good morning user, have nice day!" ;;
    [12-13]) 
        echo "Good noon user, have nice day!" ;;
    [13-17])
        echo "Good afternoon user, have nice day!";;
    [17-21]) 
        echo "Good evening user, have nice day!";;
    *) 
        echo "Good night user, have nice day!" ;;
esac

echo -n "It's " ; date

exit 0
