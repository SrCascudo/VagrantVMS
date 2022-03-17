#!/bin/bash

if [ $1 == '-d' ] 
then
echo "network:
  version: 2
  ethernets:
    eth0:
      dhcp4: true
    eth1:
      dhcp4: true" > /vagrant/ConfRede/01-netcfg.yaml

elif [ $1 == '-s' ] 
then
echo "network:
  version: 2
  ethernets:
    eth0:
      dhcp4: true
    eth1:
      addresses: [$2]" > /vagrant/ConfRede/01-netcfg.yaml
      
fi
