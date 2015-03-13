class role::zabbix {
    include profile::base
    include profile::zabbix::server
    include profile::zabbix::client
}
