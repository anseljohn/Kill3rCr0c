#!/bin/bash

apt-get install auditd -y --force-yes
auditd -s enable
#auditctl -e 1