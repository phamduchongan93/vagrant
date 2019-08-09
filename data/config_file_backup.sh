#!/bin/bash
#Description: this script will create back up of your machine routinely. 
#Author/contributor: An Pham
# checking if you have root privellege


##### Syslog config ######
# this part is used to store your config offsite
#$name_syslog=''
#$ip_address=''
#port_num=''

# 

tar_dir='/home/vagrant'

if [ "`whoami`" != root ] 
then 
	echo "You need root privellege to run this script. You may do so by typing sudo prior to the command "
	exit 1
fi




#checking if the backup file exist
if [ ! -w ect_backup.tgz ]
then 
	tar -cvzf "$tar_dir/etc_backup.tgz" /etc/*
else
	tar -u "$tar_dir/etc_backup.tgz" /etc/*
fi 


if [ ! -w home_config.tgz ]
then
	tar -cvzf "$tar_dir/home_config.tgz" "/home/$(whoami)/.*"
else
	tar -rf "$tar_dir/home_config.tgz" "/home/$(whoami)/.*"
fi






# checking cron jobs
echo "Check if you have the startup file for the backup"

#check if the crontab has the config backup

result="`grep -i etc_backup.tgz /etc/crontab`"

if [ "$result" = '' ]
then
	echo -e "\tYou did not add it at start up. Would you like to?\n"
	PS3="\t Do you want to add the backup script to startup process? > "
	select choice in yes no
	do
	case $choice in	
		yes) 	
			echo '@reboot  /bin/tar -cvzf etc_backup.tgz /etc/conf/ &' >> /etc/crontab
			if [ "`echo $?`" = 0 ]
			then 
				You have been succesfully updated your cron file.
			fi
			break;
			;;
		no)
			break;
			;;
		*)
			echo "You choice $REPLY not valid"
			;;

	esac
	done
else 
	echo -e "\n\tYou have already add the script to startup"
fi


<<Comment1
# send to a syslog server.

remote_server = '' # leave empty if your don't want to server log.
user= ''
pass=''


if [remote_servert != '']
	echo 
Comment1
