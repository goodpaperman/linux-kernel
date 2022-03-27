#! /bin/sh
wget https://mirrors.edge.kernel.org/pub/linux/kernel/v2.6/linux-2.6.0.tar.gz
tar xzvf linux-2.6.0.tar.gz
cd linux-2.6.0

sudo apt-get install libncurses5-dev
# comment 'current_menu' to avoid compile error in make menuconfig
sed -i '91s#^#//#' scripts/kconfig/mconf.c
make menuconfig


