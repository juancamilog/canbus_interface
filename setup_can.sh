#!/usr/bin/env sh
echo BB-DCAN1 | sudo tee /sys/devices/bone_capemgr.*/slots
sudo modprobe can
sudo modprobe can-dev
sudo modprobe can-raw
sudo ifconfig can0 down
#sudo ip link set can0 up type can bitrate 1000000
#sudo ip link set can0 up type can bitrate 1000000 loopback on triple-sampling on
sudo ip link set can0 up type can bitrate 1000000 triple-sampling on
sudo ifconfig can0 up

