# Vagrant for Zabbix

This Vagrant configuration can be used for quick testing purposes of Zabbix infrastructure. All systems are based on **CentOS 6.5** (see Vagrantfile) for **libvirt** provider for use on Linux systems (NFS shared directory).

It builds three virtual machines:
  * **zbx-server** - Zabbix server
  * **zbx-host1** - Zabbix Client 1
  * **zbx-host2** - Zabbix Client 2

After installation systems are ready to use (see below).


# Zabbix server
Details:
  * Hostname: **zbx-server**
  * Static IP: **192.168.33.33**
  * Zabbix components installed: **server 2.2**, **agent 2.2**
  * Database: **Postgresql** (access for zabbix - login:zabbix, password:zabbix)
  * Frontend access: **[http://192.168.33.33/zabbix/](http://192.168.33.33/zabbix/)**

# Zabbix clients
Common:
  * Zabbix components installed: **agent 2.2**
  * Installed **snmpd** with read-only **pub** community
 
Host 1:
  * Hostname: **zbx-host1**
  * Static IP: **192.168.33.131**

Host 2:
  * Hostname: **zbx-host2**
  * Static IP: **192.168.33.132**

