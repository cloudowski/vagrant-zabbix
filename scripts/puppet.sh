if ! which puppet &> /dev/null;then
    yum -y install https://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm && yum install -y puppet

fi
