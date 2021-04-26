#!/bin/sh

#kills http server

pid=$(sh ~/web/scripts/pid.sh | grep -o '[0-9]\{1,10\}')

echo 'Killing process '$pid
kill $pid
sleep 1s
echo 'Done.'

