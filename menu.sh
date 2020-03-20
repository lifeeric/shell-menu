#!/bin/bash

# Author: @LifeErice on github
# Version: 1.0

while true
do
	clear
	echo -e "\e[3;32m       Welcome to Shell Menu \e[0m"
	echo -e "\e[5;31m       Press Any key below \e[0m"
	echo 
	echo 
	echo -e "\e[1;31m cal\e[0m: Calendar           \e[1;31mls\e[0m: show the Home Directories"
	echo -e "\e[1;31m ip\e[0m: show me ip         \e[1;31m user\e[0m: show current user name"
	echo
	echo
	read -p "Command -> "
	
	# math the the command
	echo -e "\e[1;31m"
	case "$REPLY" in
		cal) cal;;
		ls) ls $HOME;;
		ip) ip addr;;
		user) echo $(who | cut -f1 -d" ");;
	**)	echo "not found";;
	esac
	echo -e "\e[0m"
	read -sn1 -p "Press any key to continue"
done
