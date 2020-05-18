#!/bin/bash

while : 
do

	clear
	export GREP_COLOR='1;30;42'
	grep -E --color=always '#|$' title.txt && echo
	echo -e ">>CREATED BY: ADRIAN SERES"
	echo -e "\e[5m\e[96mHello!\e[0m"
	echo
	echo
	echo "Please enter a number from [0..2]"
	echo -e "\e[32m===========================================\e[0m"
	echo -e "\e[93m [ 1 ]\e[0m Encryption / hashing  / encoding "
	echo -e "\e[93m [ 2 ]\e[0m Decryption / dehasing / decoding (cracking data) "
	echo -e "\e[32m===========================================\e[0m"
	echo -e "\e[32m [ 0 ]\e[0m Close the script " 
	echo
	echo -n "Enter your choice: "
	read z
	case $z in
		 1) ./encmeniu.sh
		    ;;
		 2) ./decmeniu.sh
		    ;;
		 0)
		    echo "See you again"
                    break
                    ;;
		 *)
		    echo "Sorry, wrong command"
		    ;;
	esac
done
echo -e "\e[5m\e[95mGood bye\e[0m"

