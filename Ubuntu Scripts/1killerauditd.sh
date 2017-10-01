#!/bin/bash

apt-get install auditd
auditctl -e 1
#gedit /etc/audit/auditd.conf