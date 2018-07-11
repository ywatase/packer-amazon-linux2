#!/bin/sh

sudo rm /etc/udev/rules.d/70-persistent-net.rules
sudo perl -i.back -ne  '/^(?:HWADDR|UUID)=/ or print' /etc/sysconfig/network-scripts/ifcfg-eth0
