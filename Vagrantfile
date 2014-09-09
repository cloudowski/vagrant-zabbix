# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "baremettle/centos-6.5"

  config.vm.define "server" do |srv|
      srv.vm.provision :shell, :path => "scripts/zbx-install-server.sh"
      srv.vm.network "private_network", ip: "192.168.33.33"
      srv.vm.hostname = "zbx-server"
  end

  [1, 2].each do |i|
      config.vm.define "host#{i}" do |host|
          host.vm.provision :shell, :path => "scripts/zbx-install-agent.sh"
          host.vm.provision :shell, :path => "scripts/configure-snmpd.sh"
          host.vm.network "private_network", ip: "192.168.33.13#{i}"
          host.vm.hostname = "zbx-host#{i}"
      end
  end

  config.vm.synced_folder '.', '/vagrant', type: 'nfs'
end
