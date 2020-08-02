#!/bin/bash

set -e
set -x

wget http://down.tenda.com.cn/uploadfile/U1/U1-Linux%20Drivers.zip
unzip "U1-Linux Drivers.zip"

cd "RTL8192EU_linux_v5.2.7_22739_COEX20170113-0046.20170615/driver"
rm *.tar.gz

wget "https://github.com/Mange/rtl8192eu-linux-driver/archive/realtek-4.4.x.zip"
unzip "realtek-4.4.x.zip"
tar czf "rtl8192eu-linux-driver-realtek-4.4.x.tar.gz" "rtl8192eu-linux-driver-realtek-4.4.x"

cd ..
sudo bash ./install.sh

echo "Everytime you bootup your machine, you should reconnect your usb wireless driver or you can not connect to network(find 'send auth' and 'timeout' from '/var/log/kern.log'). I don't know why, but it works."
