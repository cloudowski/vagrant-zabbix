# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.8.6"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "puppetlabs/centos-7.2-64-nocm"
#  config.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"
  
  # disabled builtin rsync directory in centos/7 box
  config.vm.synced_folder ".", "/home/vagrant/sync", type: "rsync", disabled: true
    
  config.vm.provision :shell, :path => "scripts/common.sh"
  config.vm.provision :shell, :path => "scripts/puppet.sh"
  config.vm.provision :shell, :path => "scripts/puppet-modules.sh"


  config.vm.provision "puppet" do |puppet|
      puppet.hiera_config_path= "puppet/hiera.yaml"
      puppet.working_directory = "/tmp/vagrant-puppet/"
      puppet.environment = "puppet"
      puppet.environment_path = "."
      #puppet.options = "--verbose --debug"
      puppet.options = "--verbose"
  end

  config.vm.define "server", autostart: true do |host|
      config.vm.network "forwarded_port", guest: 80, host: 8080
      config.vm.network "forwarded_port", guest: 10050, host: 10050
      config.vm.network "forwarded_port", guest: 10051, host: 10051
      host.vm.hostname = "server.test.lvo"
  end
  config.vm.provision :shell, :path => "scripts/fix-config.sh"

#  config.vm.synced_folder '.', '/vagrant', type: 'rsync'
  config.vm.synced_folder '.', '/vagrant'

end
