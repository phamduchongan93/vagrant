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
