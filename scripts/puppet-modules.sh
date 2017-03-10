#!/bin/bash

puppet module install --modulepath '$basemodulepath' puppet-zabbix

# for some reasons gpg key is not imported by puppet module
rpm --import http://repo.zabbix.com/RPM-GPG-KEY-ZABBIX

