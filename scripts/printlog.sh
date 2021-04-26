#!/bin/sh
#lists server logs and provides option for displaying
#saved or current log

sh ~/web/scripts/listlogs.sh
read -p "Enter name of log file to display or press enter for current log: " inp
sh ~/web/scripts/log.sh $inp
