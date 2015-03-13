class profile::zabbix::server {

    class { 'zabbix': }
    class { 'postgresql::server': }

    include apache::mod::php

}
