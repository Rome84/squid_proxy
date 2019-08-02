#!/usr/bin/bash

set -e
sudo yum install -y epel-release
sudo yum install -y ansible
echo "Extracting squid-ami.tar"
cd /home/centos
pwd
ls -ltr
tar -xf squid-centos-ami.tar
echo "Running build"
ansible-playbook squid-centos-ami/main-site.yml
sudo yum remove -y ansible epel-release
