#!/bin/sh
#shell script providing menu for server management

sleep 1s
#loop for menu options
while true
do
 clear
 echo '\e[33m======================================='
 echo '             Search Logs'
 echo '=======================================\e[0m'
 echo '\e[36m'
 echo '0) Back to log management'
 echo '1) Search a log for IP addresses'
 echo '2) Search a log for entries by IP'
 echo '\e[1;33m'
#get input
 read -p "Please enter option: " searchin
 echo ''
#handle user input
 case $searchin in
	"0" ) clear
		break;;
	"1" ) clear
		sh ~/web/scripts/searchfor.sh
		sh ~/web/scripts/wait.sh;;
	"2" ) clear
		sh ~/web/scripts/searchby.sh
		sh ~/web/scripts/wait.sh;;
	"3" ) clear
		sh ~/web/scripts/wait.sh;;
	* ) echo "Invalid option chosen."
		echo ""
		sh ~/web/scripts/wait.sh;;
	esac
done
clear
