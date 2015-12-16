#!/usr/bin/env bash
apt-get install -y  dnsmasq
echo "dhcp-range=192.168.33.100,192.168.33.150,12h" >> /etc/dnsmasq.conf
echo "dhcp-boot=boot/pxelinux.0,boothost,192.168.33.2"  >> /etc/dnsmasq.conf
service dnsmasq restart
