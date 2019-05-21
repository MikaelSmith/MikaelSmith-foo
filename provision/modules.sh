#!/usr/bin/env bash

# Use an environment for dependencies to avoid overwriting the module we're developing accidentally with r10k.
/opt/puppetlabs/puppet/bin/r10k puppetfile install \
  --puppetfile /vagrant/Puppetfile \
  --moduledir /etc/puppetlabs/code/environments/production/modules
