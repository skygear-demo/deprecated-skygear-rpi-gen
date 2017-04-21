#!/bin/bash -e

on_chroot << EOF
cd /home/pi
su -c 'git clone https://github.com/skygear-demo/skygear-rpi-launcher.git' pi
cd skygear-rpi-launcher
cp skygear-rpi-launcher.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable skygear-rpi-launcher
EOF
