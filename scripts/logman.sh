#!/bin/sh
#shell script providing menu for server management

sleep 1s
#loop for menu options
while true
do
 clear
 echo '\e[33m======================================='
 echo '            Log  Management'
 echo '=======================================\e[0m'
 echo '\e[36m'
 echo '1) Print a log file'
 echo '2) Display a log file using more'
 echo '3) Tail the running log file'
 echo '4) Backup running log to ~/web/logs'
 echo '5) Clear running log'
 echo '6) Search logs by IP'
 echo '0) Exit to main menu'
 echo '\e[1;33m'
#get input
 read -p "Please enter option: " login
 echo ''
#handle user input
 case $login in
	0 ) clear
		break;;
	1 ) clear
		sh ~/web/scripts/printlog.sh
		sh ~/web/scripts/wait.sh;;
	2 ) clear
		sh ~/web/scripts/showmore.sh
		sh ~/web/scripts/wait.sh;;
	3 ) clear
		sh ~/web/scripts/tail.sh
		sh ~/web/scripts/wait.sh;;
	4 ) clear
		sh ~/web/scripts/backup.sh
		sh ~/web/scripts/wait.sh;;
	5 ) clear
		echo 'Clearing output.log...'
		: > /mnt/ssd/fs/output.log
		echo ''
		echo ''Done.
		sh ~/web/scripts/wait.sh;;
	6 ) echo '\e[0m'
		sh ~/web/scripts/searchlogs.sh
		echo '\e[0m';;
	* ) echo "Invalid option chosen."
		echo ""
		sh ~/web/scripts/wait.sh;;
	esac
done
clear
