#!/bin/bash -e

VERSION=v7.7.1

on_chroot << EOF
mkdir temp
cd temp
wget https://nodejs.org/dist/$VERSION/node-$VERSION-linux-armv6l.tar.gz
tar -xzf node-$VERSION-linux-armv6l.tar.gz
mv node-$VERSION-linux-armv6l /opt/nodejs/
ln -s /opt/nodejs/bin/node /usr/bin/node
ln -s /opt/nodejs/bin/node /usr/sbin/node
ln -s /opt/nodejs/bin/node /sbin/node
ln -s /opt/nodejs/bin/node /usr/local/bin/node
ln -s /opt/nodejs/bin/npm /usr/bin/npm
ln -s /opt/nodejs/bin/npm /usr/sbin/npm
ln -s /opt/nodejs/bin/npm /sbin/npm
ln -s /opt/nodejs/bin/npm /usr/local/bin/npm
EOF
