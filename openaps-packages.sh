#!/bin/bash

# TODO: remove the `-o Acquire::ForceIPv4=true` once Debian's mirrors work reliably over IPv6
apt-get -o Acquire::ForceIPv4=true install -y sudo
sudo apt-get -o Acquire::ForceIPv4=true update && sudo apt-get -o Acquire::ForceIPv4=true -y upgrade
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get remove --purge bluez -y && sudo apt-get install libdbus-1-dev libglib2.0-dev libudev-dev libical-dev libreadline-dev -y && cd ~/src && wget www.kernel.org/pub/linux/bluetooth/bluez-5.50.tar.xz && tar xvf bluez-5.50.tar.xz && cd bluez-5.50 && ./configure --prefix=/usr --mandir=/usr/share/man --sysconfdir=/etc --localstatedir=/var --enable-experimental && make -j4 && sudo make install && ln -s /usr/libexec/bluetooth/bluetoothd /usr/bin/bluetoothd && \
sudo apt-get -o Acquire::ForceIPv4=true install -y git python python-dev software-properties-common python-numpy python-pip watchdog strace tcpdump screen acpid vim locate jq lm-sensors && \
#if getent passwd edison > /dev/null; then sudo apt-get -o Acquire::ForceIPv4=true install -y nodejs-legacy; fi && \
sudo pip install -U openaps && \
sudo pip install -U openaps-contrib && \
sudo openaps-install-udev-rules && \
sudo activate-global-python-argcomplete && \
sudo npm install -g json oref0 && \
echo openaps installed && \
openaps --version


