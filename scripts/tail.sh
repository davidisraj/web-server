#!/bin/sh

#display contents of server log
echo '\e[0m\e[33m++++++++++++++++++++++++++++++++++++++++'
echo '          Tail of current log'
echo '++++++++++++++++++++++++++++++++++++++++\e[0m'
echo ''
tail /mnt/ssd/fs/output.log
