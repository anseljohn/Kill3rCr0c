#!/bin/bash

apt-get install vsftpd

sed -i '/^#.*write_enable=YES/s/^#//' /etc/vsftpd.conf
echo "allow_writable_chroot=YES" >> /etc/vsftpd.conf
sed -i '/^#.*chroot_local_user=YES/s/^#//' /etc/vsftpd.conf
