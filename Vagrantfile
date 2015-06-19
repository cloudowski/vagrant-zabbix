# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "centos/7"
  # disabled builtin rsync direcotry in centos/7 box
  config.vm.synced_folder ".", "/home/vagrant/sync", type: "rsync", disabled: true
    
  config.vm.provision :shell, :path => "scripts/common.sh"
  config.vm.provision :shell, :path => "scripts/puppet.sh"
  config.vm.provision :shell, :path => "scripts/puppet-modules.sh"


  config.vm.provision "puppet" do |puppet|
      puppet.hiera_config_path= "puppet/hiera.yaml"
      puppet.working_directory = "/tmp/vagrant-puppet/"
      puppet.manifests_path = "puppet/manifests"
      puppet.module_path = "puppet/modules"
      #puppet.options = "--verbose --debug"
      puppet.options = "--verbose"
  end

  config.vm.define "server", autostart: true do |host|
      config.vm.network "forwarded_port", guest: 80, host: 8080
      config.vm.network "forwarded_port", guest: 10050, host: 10050
      config.vm.network "forwarded_port", guest: 10051, host: 10051
      host.vm.hostname = "server.test.lvo"
  end

#  config.vm.synced_folder '.', '/vagrant', type: 'nfs'
#  config.vm.synced_folder '.', '/vagrant', type: 'rsync'

end
