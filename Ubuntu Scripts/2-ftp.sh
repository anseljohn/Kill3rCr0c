#!/bin/bash

apt-get purge vsftpd -y --force-yes
apt-get install vsftpd -y --force-yes

sed -i '/^#.*write_enable=YES/s/^#//' /etc/vsftpd.conf
echo "allow_writable_chroot=NO" >> /etc/vsftpd.conf
sed -i '/^#.*chroot_local_user=YES/s/^#//' /etc/vsftpd.conf
