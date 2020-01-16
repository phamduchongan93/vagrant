#!/bin/bash
#Description: this script will create back up of your machine routinely. 
#Author/contributor: An Pham
# checking if you have root privellege


##### Syslog config ######
# this part is used to store your config offsite
$name_syslog=''
$ip_address=''
$port_num=''

# 



if whoami != root then 
	echo "You need root privellege to run this script. You may do so by typing sudo prior to the command "






 tar -cvzf etc_backup.tgz /etc/conf/*
 tar -cvzf home_config.tgz .config/*

echo "Check if you have the startup file for the backup"

#check if the crontab has the config backup

result="grep -i etc_backup.tgz /etc/crontab"
if [result='']
	echo 'You did not add it at start up. Would you like to?'
	read answer




	
	echo 'tar -cvzf etc_backup.tgz /etc/conf/' >> /etc/crontab
else:
	echo 'You have already added it in startup'




echo "This is the test" 	


# send to a syslog server.

remote_server = '' # leave empty if your don't want to server log.
user= ''
pass=''


if [remote_servert != '']
	echo 
