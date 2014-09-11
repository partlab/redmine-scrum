# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 22, host: 1234
  config.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  end
end
