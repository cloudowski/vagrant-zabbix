class profile::zabbix::server(
    $zabbix_version = '2.4'

) {

    class { 'apache':
        mpm_module => 'prefork',
    }

    include apache::mod::php

    class { 'postgresql::server': }
    class { 'zabbix': zabbix_version => $zabbix_version }
#    class { 'zabbix::proxy': }
    class { 'zabbix::agent': zabbix_version => $zabbix_version }
               

}
