#!/bin/sh
# lists log files and provides option for displaying
# IP adresses from saved or current log file

sh ~/web/scripts/listlogs.sh
read -p "Enter name of log file to search or enter 0 for current log: " inp

if [ $inp = 0 ] ; then
	echo ''
	echo 'Showing IPs from current log'
	echo '\e[0m'
	grep -o '\<[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\>' /mnt/ssd/fs/output.log | sort | uniq
else
	echo ''
	echo 'Showing IPs from log file '$inp
	echo '\e[0m'
	grep -o '\<[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\>' ~/web/logs/$inp | sort | uniq
fi
