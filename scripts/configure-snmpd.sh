#!/bin/bash

yum install -y net-snmp net-snmp-utils

echo 'rocommunity pub' >> /etc/snmp/snmpd.conf 

chkconfig snmpd on
service snmpd restart
