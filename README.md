# Vagrant for Zabbix

This Vagrant configuration can be used for quick testing purposes of Zabbix infrastructure. All systems are based on **CentOS 6.6** (see Vagrantfile).

It builds the following virtual machines:
  * **server** - Zabbix server
  * **proxy** - Zabbix proxy (not starting by default)

After installation systems are ready to use (see below).


# Zabbix server
Details:
  * Hostname: **server.test.lvo**
  * Zabbix components installed: **server 2.2**, **agent 2.2**
  * Database: **Postgresql** (access for zabbix - login:zabbix, password:zabbix)
  * Frontend access: **[http://localhost:8080/](http://localhost:8080)** (using port forwarding)
