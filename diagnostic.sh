#!/bin/bash
# ldiag - A simple bash script to create a diagnostic report of the system
# GitHub: https://www.gitub.com/awesomelewis2007/ldiag
# Licence: GPL-3.0
# By: Lewis Evans

if [ "$EUID" -ne 0 ]
  then echo "Please run as root using sudo"
  exit
fi

if [ "$1" == "-q" ]; then
	if [ -f diagnostic.txt ]; then
		rm diagnostic.txt
		touch diagnostic.txt
	else
		touch diagnostic.txt
	fi
	echo "Diagnostic report" > diagnostic.txt
	echo "This file was created by ldiag check out https://www.gitub.com/awesomelewis2007/ldiag for more information" >> diagnostic.txt
	date >> diagnostic.txt
	echo "====================" >> diagnostic.txt
	echo " ====================[uname -a]====================" >> diagnostic.txt
	uname -a >> diagnostic.txt
	echo "====================[free -m]====================" >> diagnostic.txt
	free -m >> diagnostic.txt
	echo "====================[df -h]====================" >> diagnostic.txt
	df -h >> diagnostic.txt
	echo "====================[lscpu]====================" >> diagnostic.txt
	lscpu >> diagnostic.txt
	echo "====================[lspci]====================" >> diagnostic.txt
	lspci >> diagnostic.txt
	echo "====================[lsusb]====================" >> diagnostic.txt
	lsusb >> diagnostic.txt
	echo "====================[lshw]====================" >> diagnostic.txt
	lshw >> diagnostic.txt
	echo "====================[ps -ef]====================" >> diagnostic.txt
	ps -ef >> diagnostic.txt
	echo "====================[ip addr]====================" >> diagnostic.txt
	ip addr >> diagnostic.txt
	exit 0
fi

if [ "$1" == "-h" ]; then
    echo "ldiag - A simple bash script to create a diagnostic report of the system"
    echo "GitHub: https://www.gitub.com/awesomelewis2007/ldiag"
    echo "By: Lewis Evans"
    echo "If there are any issues please create an issue on GitHub"
    echo "Usage: sudo ./ldiag.sh [OPTIONS]"
    echo "Options:"
    echo "-h: Show this help message"
    echo "-q: Run the program in quiet mode"
    exit 0
fi


echo "This program will run commands to create a diagnostic report of the system and save it to diagnostic.txt"
echo "Do you want to run the program? (y/n)"
read answer
if [ "$answer" != "y" ]; then
	echo "Exiting the program..."
	exit 1
fi

if [ -f diagnostic.txt ]; then
	rm diagnostic.txt
	touch diagnostic.txt
else
	touch diagnostic.txt
fi
echo "Diagnostic report" > diagnostic.txt
echo "This file was created by ldiag check out https://www.gitub.com/awesomelewis2007/ldiag for more information" >> diagnostic.txt
date >> diagnostic.txt
echo "====================" >> diagnostic.txt
echo " ====================[uname -a]====================" >> diagnostic.txt
uname -a >> diagnostic.txt
echo "====================[free -m]====================" >> diagnostic.txt
free -m >> diagnostic.txt
echo "====================[df -h]====================" >> diagnostic.txt
df -h >> diagnostic.txt
echo "====================[lscpu]====================" >> diagnostic.txt
lscpu >> diagnostic.txt
echo "====================[lspci]====================" >> diagnostic.txt
lspci >> diagnostic.txt
echo "====================[lsusb]====================" >> diagnostic.txt
lsusb >> diagnostic.txt
echo "====================[lshw]====================" >> diagnostic.txt
lshw >> diagnostic.txt
echo "====================[ps -ef]====================" >> diagnostic.txt
ps -ef >> diagnostic.txt
echo "====================[ip addr]====================" >> diagnostic.txt
ip addr >> diagnostic.txt

while true; do
    echo "Do you want to add any more commands to the report? (y/n)"
    read answer
    if [ "$answer" != "y" ]; then
        break
    fi
    echo "Enter the command you want to add to the report"
    read command
    echo "====================[USER RAN COMMAND/$command]====================" >> diagnostic.txt
    $command >> diagnostic.txt
done