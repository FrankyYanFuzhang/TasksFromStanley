#!/bin/bash

display(){
echo "Sys Info Menu:"
printf "%-5s" 1.
echo "Currently logged user"
printf "%-5s" 2.
echo "Your shell directory"
printf "%-5s" 3.
echo "Home directory"
printf "%-5s" 4.
echo "Ds name & version"
printf "%-5s" 5.
echo "Current working directory"
printf "%-5s" 6.
echo "Number of users logged in"
printf "%-5s" 7.
echo "Show all available shells in your system"
printf "%-5s" 8.
echo "Hard disk information"
printf "%-5s" 9.
echo "Cpu information"
printf "%-5s" 10.
echo "Memory information"
printf "%-5s" 11.
echo "File system information"
printf "%-5s" 12.
echo "Currently running process"
printf "%-5s" 13.
echo "Exit"

read -p "Choose your option: " option
echo
case $option in 
    1) whoami
    ;;
    2) $PATH
    ;;
    3) $HOME
    ;;
    4) cat /etc/os-release
    ;;
    5) pwd
    ;;
    6) who --count
    ;;
    7) cat /etc/shells
    ;;
    8) df
    ;;
    9) cat /proc/cpuinfo
    ;;
    10) cat /proc/meminfo
    ;;
    11) df -Th
    ;;
    12) ps -aux
    ;;
    13) exit
    ;;
    *)
        echo "you enter the wrong option"
    ;;
esac
}

display
echo 
read -p "Continue (y/n) : " option_1
while [ "${option_1}" = "y" ]
do
    display
    read -p "Continue (y/n) : " option_1
done