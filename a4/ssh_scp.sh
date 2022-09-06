#!/bin/bash

echo "1 - ssh"
echo "2 - scp"
echo "Select an option to continue"
read model
echo "Please enter remote system ip address"
read ipaddress
echo "Please enter the user name"
read username

if [ $model = 1 ]; then
    ssh $username@$ipaddress
    elif [ $model = 2 ]; then
        echo "1 - local -> remote"
        echo "2 - remote -> local"
        echo "Please choose an option ."
        read cpmodel
        echo "Please enter source file location"
        read sclocation
        echo "Please enter destination file location"
        read deslocation
        if [ $cpmodel = 1 ];then
        
            scp "$sclocation" "$username@$ipaddress:$deslocation"
            elif [ $cpmodel = 2 ];then
                scp "$username@$ipaddress:$sclocation" "$deslocation"
        fi
fi
