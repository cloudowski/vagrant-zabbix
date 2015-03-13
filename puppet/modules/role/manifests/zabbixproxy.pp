class role::zabbixproxy {
    include profile::base
    include profile::zabbix::proxy
    include profile::zabbix::client
}
