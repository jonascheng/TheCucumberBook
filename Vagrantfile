# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT
# Update
sudo apt-get update
sudo apt-get upgrade -y

# Install RVM (Ruby Version Manager)
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -L https://get.rvm.io | bash -s stable
source ~/.profile

# Install the latest Ruby
rvm install ruby

# Install Bundler
if [! -f /usr/local/bin/bundle ]; then
sudo gem install bundler;
fi

# Install Cucumber and RSpec
if [! -f /usr/local/bin/cucumber ]; then
cd /vagrant
bundle install;
fi

SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  # The script is created base on Ubuntu14, please replace your box accordingly.
  config.vm.box = "ubuntu/trusty32"

  config.vm.provision "shell", inline: $script

end
