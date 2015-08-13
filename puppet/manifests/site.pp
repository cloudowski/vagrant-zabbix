hiera_include('role')

if versioncmp($::puppetversion,'3.6.1') >= 0 {

    $allow_virtual_packages = hiera('allow_virtual_packages',false)

    Package {
            allow_virtual => $allow_virtual_packages,
    }
}
