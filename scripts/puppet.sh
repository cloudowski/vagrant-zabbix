if ! which puppet &> /dev/null;then
  yum install -y https://yum.puppetlabs.com/el/7/products/x86_64/puppet-3.8.7-1.el7.noarch.rpm \
    https://yum.puppetlabs.com/el/7/products/x86_64/hiera-1.3.4-1.el7.noarch.rpm \
    https://yum.puppetlabs.com/el/7/products/x86_64/facter-2.4.6-1.el7.x86_64.rpm \
    https://yum.puppetlabs.com/el/7/dependencies/x86_64/ruby-shadow-2.2.0-2.el7.x86_64.rpm \
    https://yum.puppetlabs.com/el/7/dependencies/x86_64/ruby-augeas-0.4.1-3.el7.x86_64.rpm

fi
