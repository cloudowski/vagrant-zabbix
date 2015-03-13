class profile::zabbix::proxy {

    class { '::zabbix::proxy': }
    class { 'mysql::server': }

}
