#!/bin/bash
#
# Install shell script for Cucumber and Rspec on Ubuntu14

# Update
#sudo apt-get update
#sudo apt-get upgrade -y

# Install Ruby2.2 package from brightbox
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:brightbox/ruby-ng -y
sudo apt-get update -y
sudo apt-get install ruby2.2 -y
sudo apt-get install ruby2.2-dev -y

# Install Bundler
sudo gem install bundler

# Install Cucumber and RSpec
# NOTE: Please ensure Gemfile is at the same folder with this script. 
bundle install
