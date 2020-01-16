# Multiple VM for Gereral Purposes.
---
## FYI 
---
this vagrant files will use "virtualbox" as provider for VMs. I set it up by default to run on any machine. You are welcome to edit it to run with Hyper-V of windows or KVM of Linux. Either of them should give excellence performence compared to virtualbox. But you might have to enable Hyper-V on windows machine to make it run. Sametim wit KVM, please check if kvm is turned on by the kernel.
	
## Getting Started
---
This folder include vagrantfile. This vagrantfile is mainly used to generate two vm for testinging. By default, these two vm are connected on subnet 192.168.33.0/24. These are two ubuntu vm, so the package management system is debian like.


The synced folder will be at /vagrant_data. Both of the vm guests and host machine share this folder. At the host machine its the data folder file (refer to vagrantfile to know more). If you dont have the data file on your local repo, please genrate one by typing "mkdir data".

1. Check if you have data directory on your local working directory.
2. Check if you have vagrantfile file for the vagrant to initiate. 
## Installation
---
	vagrant up				To start the vms

Quick guide to run vagrant vm:

	vagrant status  [vmname] 		Displaying info of VM

	vagrant suspend/resume [vmname] 	Suspend and resume VM
	vagrant ssh [vmname]			SSh to your desired VM
	CTRL+d 					To jump out of to VM.

## Optional scripts
In **data** folder, you should see some scripts, this scripts will help you to backup your config files of the VM. 


## Bugs
While editing file between windows and linux enviroment you may encounter this error 
/bin/bash^M: bad interpreter: No such file or directory


If so,

run the bash script in /vagrant_data folder


file_fix.sh [filename]

