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
#config.vm.provision "shell", path: "centos-docker-install.sh"
  end

  config.vm.define "ubuntu-docker" do |config|
    config.vm.hostname = "ubuntu-docker"
    config.vm.box = "generic/ubuntu1804"
    config.vm.box_check_update = false
    config.vm.network "private_network", ip: "192.168.18.2"
    config.vm.network :forwarded_port, guest: 22, host: 22 
    config.vm.network :forwarded_port, guest: 8001, host: 8001
    config.vm.network :forwarded_port, guest: 30872, host: 30872
    config.vm.network :forwarded_port, guest: 10443, host: 10443
    config.vm.provider :libvirt do |domain|
      domain.cpus = 4
      domain.memory = 2048
    end
    config.vm.provision "ansible" do |ansible|
      ansible.verbose = "v"
      ansible.playbook = "ubuntu-playbook.yml"
    end 
  end  # ending vm2 define
end
