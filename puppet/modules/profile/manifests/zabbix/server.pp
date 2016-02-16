class profile::zabbix::server {

    class { 'zabbix': }
    class { 'postgresql::server': }
    class { 'mysql::server': }

    include apache::mod::php

}
