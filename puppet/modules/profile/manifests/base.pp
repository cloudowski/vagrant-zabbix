class profile::base {
    if ( $::osfamily == 'RedHat' ) {
        service {['iptables', 'firewalld']:
            ensure => stopped,
                   enable => false
        }
    }

    case $::osfamily {
        'RedHat': { $vim = 'vim-enhanced' }
        'Debian': { $vim = 'vim' }

    }
    $packages = hiera('profile::base::packages',undef)
    if ($packages)  {
        package { $packages: ensure => installed }
    }

    host { 'localhost': host_aliases => [ 'localhost.localdomain' ], ip => '127.0.0.1' }
    host { 'localhost6': host_aliases => [ 'localhost6.localdomain6' ], ip => '::1' }
    host { 'server.test.lvo': host_aliases => ['server', 'ci', 'ci.test.lvo'], ip => '192.168.34.120' }


}
