#!/bin/bash
sudo yum update -y
sudo yum install git wget vim nano -y
cd /tmp/
wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -ivh epel-release-latest-7.noarch.rpm
sudo yum install epel-release -y
sudo yum install ansible -y
cd /home/
git clone https://github.com/sravankumar-n/Sensu_Ansible_CF.git
/usr/bin/ansible-playbook /home/Sensu_Ansible_CF/setup.yml > output.txt 
