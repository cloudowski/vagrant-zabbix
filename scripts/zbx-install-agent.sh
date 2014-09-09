#!/bin/bash

yum -y install http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install -y zabbix22-agent.x86_64 

for s in zabbix-agent;do
	chkconfig $s on
	service $s restart
done
