class role::splunkpg {
    include profile::splunkforwarder
    include profile::pgserver
    include role::base
}
