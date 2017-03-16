#!/bin/bash -e

on_chroot << EOF
cd /home/pi
su -c 'git clone https://github.com/akiroz/skygear-iot.git' pi
cd skygear-iot
su -c 'npm install' pi
cp skygear-iot.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable skygear-iot
EOF
