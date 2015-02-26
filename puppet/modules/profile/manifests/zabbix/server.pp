class profile::zabbix::server {

    class { 'apache':
        mpm_module => 'prefork',
    }
#    include apache
    include apache::mod::php

    class { 'postgresql::server': }
    class { 'zabbix': }
#    class { 'zabbix::proxy': }
    class { 'zabbix::agent': }
               

}
