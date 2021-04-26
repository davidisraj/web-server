# web-server
Shell scripts for management of a simple python HTTP server

This set of scripts is designed to run and manage a web server from external storage on Linux based operating systems.
It provides a menu for moving between and executing scripts easily.

It assumes a few prerequisites:
1. The media that you are using to run your server is at "/dev/sda1".
2. The HTML files etc. that you wish to serve are in a directory named "fs" in the root of "/dev/sda1".
3. There is a directory in "/mnt" named "ssd" which the storage device will be mounted to.
4. These scripts are within a directory named "web" within the user's home directory.

I plan to add a script to initialise these/correct the scripts based on which device/directory the user wants to serve from.
For now ensure your external storage is on /dev/sda1, and that your HTML is in a directory "fs" in the root of your external storage,
then run:

git clone https://github.com/davidisraj/web-server.git
mv web-server web
sudo mkdir /mnt/ssd

From there simply start the menu with:
./web/serv/sh
