if ! which puppet &> /dev/null;then
    yum -y install https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm && yum install -y puppet

fi
