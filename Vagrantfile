# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  # The script is created base on Ubuntu14, please replace your box accordingly.
  config.vm.box = "ubuntu/trusty32"

  config.vm.provision "file", source: "Gemfile", destination: "~/Gemfile"
  config.vm.provision "shell", path: "InstCucumberRspec.sh"
end
