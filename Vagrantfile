# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "hashicorp/precise64"

	config.vm.define "rbmq1" do |rbmq|
		rbmq.vm.network "private_network", ip: "192.168.33.10"
		rbmq.vm.hostname = "rbmq1"
		rbmq.vm.provision "shell", path:"provision.sh"
	end
	config.vm.define "rbmq2" do |rbmq|
		rbmq.vm.network "private_network", ip: "192.168.33.11"
		rbmq.vm.hostname = "rbmq2"
		rbmq.vm.provision "shell", path:"provision.sh"
		rbmq.vm.provision "shell", path:"cluster.sh"
	end

end
