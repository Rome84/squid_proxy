#!/usr/bin/bash

set -e
sudo yum install -y python wget
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install -y python2-pip
sudo pip install ansible
echo "Extracting squid-redhat-ami.tar"
cd /home/ec2-user
pwd
ls -ltr
tar -xf squid-redhat-ami.tar
echo "Running build"
ansible-playbook squid-redhat-ami/main-site.yml
sudo pip uninstall ansible -y
sudo rm -rf ~/squid-redhat-ami ~/rsquid-redhat-ami.tar ~/epel-release-latest-7.noarch.rpm
sudo yum remove epel-release -y
