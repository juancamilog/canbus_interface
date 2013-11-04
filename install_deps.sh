#!/usr/bin/env sh
sudo apt-get install python-setuptools
cd deps/python-can
sudo python setup.py install
cd ../../
cp can_config_file ~/.canrc
(sudo crontab -l; echo "@reboot `pwd`/setup_can.sh")| sudo crontab -
