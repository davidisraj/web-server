#!/bin/sh

file=$1

#check if file has been passed to script
if [ $# -eq 0 ] ; then
	#display contents of server log
	echo '\e[0m\e[33m'
	echo '++++++++++++++++++++++++++++++++++++++++'
	echo '        Displaying current log'
	echo '++++++++++++++++++++++++++++++++++++++++\e[0m'
	cat /mnt/ssd/fs/output.log
	echo '\e[33m++++++++++++++++++++++++++++++++++++++++'
	echo '        Displaying current log'
	echo '++++++++++++++++++++++++++++++++++++++++\e[1m'
else
	#display specific log file
	echo '\e[0m\e[33m'
	echo '++++++++++++++++++++++++++++++++++++++++'
	echo 'Displaying log file '$file
	echo '++++++++++++++++++++++++++++++++++++++++\e[0m'
	cat ~/web/logs/$file
	echo '\e[33m++++++++++++++++++++++++++++++++++++++++'
	echo 'Displaying log file '$file
	echo '++++++++++++++++++++++++++++++++++++++++\e[1m'
fi
