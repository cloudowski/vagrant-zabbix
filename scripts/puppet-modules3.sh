#!/bin/bash

yum -y install git


cd /etc/puppetlabs/code/modules

git clone https://github.com/slashr00t/puppet-zabbix.git

if [ -L zabbix ];then
    cd zabbix
    git pull
else
    mv zabbix{,.org}
    ln -s puppet-zabbix zabbix
    cd zabbix
    git checkout zabbix-3.0
fi
