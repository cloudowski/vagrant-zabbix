    $zabbix_version = '2.2'
    class { 'apache':
        mpm_module => 'prefork',
    }
    include apache::mod::php

    class { 'postgresql::server': }
    class { 'zabbix': 
	zabbix_version => $zabbix_version,
	zabbix_url => 'server.test.lvo'

 }
    class { 'zabbix::agent': zabbix_version => $zabbix_version }
               
