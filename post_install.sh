#!/bin/sh
mkdir -p /mnt/backups/urbackup && chown urbackup:urbackup /mnt/backups/urbackup
sysrc "urbackup_server_enable=YES"
service urbackup_server start
cat /root/PLUGIN_INFO