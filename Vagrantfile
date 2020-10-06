# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
  # boxes at https://vagrantcloud.com/search.
 
 ### Only edit code from this point### 

Vagrant.configure("2") do |config|
	config.vm.define "cent-01" do |config|
		config.vm.hostname = "cent-01"
		config.vm.box = "centos/7"
		#config.vm.box_check_update = false
		config.vm.network "private_network", ip: "192.168.18.9"
		config.vm.network :forwarded_port, guest: 22, host: 22 
		config.vm.provider :libvirt do |domain|
			 domain.cpus = 2
			 domain.memory = 1024
		end
		config.vm.provision "shell", path: "centos-docker-install.sh"
 	end

	config.vm.define "ubuntu-01" do |config|
		config.vm.hostname = "ubuntu-01"
		config.vm.box = "generic/ubuntu1804"
		#config.vm.box_check_update = false
		config.vm.network "private_network", ip: "192.168.18.2"
		config.vm.network :forwarded_port, guest: 22, host: 22 
		config.vm.provider :libvirt do |domain|
			 domain.cpus = 2
			 domain.memory = 1024
		end
  config.vm.synced_folder ".", "/home/vagrant/docker-project"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ubuntu-playbook.yml"   
		end
 end  # ending vm2 define
=======
  config.vm.define "ubuntu-vm" do |vm1|
	  	vm1.vm.hostname = "ubuntu-vm"
		vm1.vm.box = "ubuntu/trusty64"
		vm1.vm.network "private_network", ip: "192.169.33.10"
		# setting up provider
		vm1.vm.provider "virtualbox" do  |vb|
			vb.gui = false
			vb.memory = "512"
			vb.name = "ubuntu-vm"
		end # ending provider
 		# Adding shell privsioning
		#
		vm1.vm.provision "shell", run: "always", inline: <<-SHELL
			echo "This is Ubuntu vm 1"
		SHELL

  end #ending vm1 define
  config.vm.synced_folder "data", "/vagrant_data"


  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
  # Begin defining vm2
  #
   config.vm.define "ubuntu-vm2" do |vm2|
	  	vm2.vm.hostname = "ubuntu-vm2"
		vm2.vm.box = "ubuntu/xenial64"
		vm2.vm.network "private_network", ip: "192.169.33.12"
		# setting up provider
		vm2.vm.provider "virtualbox" do  |vb|
			vb.gui = false
			vb.memory = "512"
			vb.name = "ubuntu-vm2"
		end # ending provider
 
		vm2.vm.provision "shell", run: "always", inline: <<-SHELL
			echo "This is Ubuntu vm 2"
			apt-get update
			apt-get install \
			apt-transport-https \
		        ca-certificates \
		        curl \
		        software-properties-common
			curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
			# 
			add-apt-repository \
   			"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   			$(lsb_release -cs) \
   			stable"
			apt-get update
			apt-get install -y docker-ce 
		SHELL

  end  # ending vm2 define
end
