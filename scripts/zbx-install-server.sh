#!/bin/bash

yum -y install http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install -y zabbix22 zabbix22-web-pgsql.noarch zabbix22-server-pgsql.x86_64 zabbix22-dbfiles-pgsql.noarch zabbix22-agent.x86_64  postgresql-server



service postgresql initdb

cp /vagrant/scripts/pg_hba.conf  /var/lib/pgsql/data/pg_hba.conf

service postgresql restart


sudo -u postgres psql -c "CREATE USER zabbix WITH PASSWORD 'zabbix';"
sudo -u postgres psql -c "CREATE DATABASE zabbix OWNER zabbix;"

sudo -u postgres psql -Uzabbix < /usr/share/zabbix-postgresql/schema.sql
sudo -u postgres psql -Uzabbix < /usr/share/zabbix-postgresql/data.sql
sudo -u postgres psql -Uzabbix < /usr/share/zabbix-postgresql/images.sql
service postgresql restart
sudo -u postgres psql -Uzabbix < /usr/share/zabbix-postgresql/data.sql

service postgresql restart

cp /vagrant/scripts/php.ini /etc/
cp /vagrant/scripts/zabbix.conf.php /etc/zabbix/web/
cp /vagrant/scripts/zabbix_server.conf /etc/

for s in httpd postgresql zabbix-{server,agent};do
	chkconfig $s on
	service $s restart
done


setsebool -P zabbix_can_network 1
setsebool -P httpd_can_network_connect 1

