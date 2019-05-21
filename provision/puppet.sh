#!/usr/bin/env bash
rpm -Uvh https://yum.puppet.com/puppet5-release-el-7.noarch.rpm
yum install -y puppet-agent
/opt/puppetlabs/puppet/bin/gem install r10k
