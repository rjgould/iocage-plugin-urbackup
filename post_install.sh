#!/bin/sh
wget https://hndl.urbackup.org/Server/2.5.30/urbackup-server-2.5.30.tar.gz
tar xf urbackup-server-2.5.30.tar.gz
cd urbackup-server-2.5.30
./configure --enable-embedded-cryptopp --enable-embedded-zstd
make
make install
mkdir -p /usr/local/etc/rc.d
mkdir -p /usr/local/etc/urbackup
chmod u+x /usr/local/etc/rc.d/urbackup_server
mkdir -p /mnt/backups/urbackup && chown urbackup:urbackup /mnt/backups/urbackup
sysrc "urbackup_server_enable=YES"
service urbackup_server start
cat /root/PLUGIN_INFO