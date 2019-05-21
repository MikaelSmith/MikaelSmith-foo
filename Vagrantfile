# Warning: this module name must be the name of the module without its namespace prefix.
module_name = 'foo'

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.4"

  # Login as root because you'll usually want to test Puppet as root
  config.ssh.username = 'root'
  config.ssh.password = 'vagrant'
  config.ssh.insert_key = 'true'

  # Install Puppet
  config.vm.provision :shell, path: "provision/puppet.sh"
  # Setup R10k and install dependencies to Puppet's environment modulepath
  config.vm.provision :shell, path: "provision/modules.sh"
  # Sync the current module to the modulepath for active development
  config.vm.synced_folder __dir__, "/etc/puppetlabs/code/modules/#{module_name}"

  # Run a smoke test after setup
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "examples"
    puppet.manifest_file = "init.pp"
  end
end
