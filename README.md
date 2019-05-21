Provisions a module development environment with Vagrant.
```
vagrant up
```

Then `vagrant ssh`:
```
cd vagrant
puppet apply examples/foo.pp
```

For more flexible setup, start looking into [Beaker](https://github.com/puppetlabs/beaker-rspec). https://www.camptocamp.com/en/actualite/puppet-test-driven-development-part-0-setup-environment/ contains one possible introduction. I hope that [Litmus](https://github.com/puppetlabs/puppet_litmus) will eventually become an easier starting point for dev and test setup.

The Vagrant setup above:
- Installs Puppet and R10k
- Installs dependencies with R10k to a default Puppet module location (the `production` environment specifically)
- Mounts the current module to a different default Puppet module location (to avoid R10k's tendency to delete anything it doesn't know about)
- Runs a smoke test to make sure things are working

You can then work on manifest code for this module and write examples to try it out, both synced to the VM.

If you add new dependencies, you'll need to run `vagrant provision` to re-run R10k.

