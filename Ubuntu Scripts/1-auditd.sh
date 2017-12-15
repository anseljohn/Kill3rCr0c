#!/bin/bash

apt-get install auditd -y --force-yes
auditctl -e 1
#gedit /etc/audit/auditd.conf