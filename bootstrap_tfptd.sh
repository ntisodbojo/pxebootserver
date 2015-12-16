#!/usr/bin/env bash

apt-get update
apt-get install -y tftpd-hpa
ln -s  /vagrant/boot /var/lib/tftpboot/boot
