class role::zabbix {
    include role::base 
    include profile::zabbix::server
}
