#!/bin/bash

apt-get install libpam-cracklib -y --force-yes
echo "auth optional pam_tally2.so deny=8 onerr=fail unlock_time=30 audit root_unlock_time=30 silent" >> /etc/pam.d/common-auth
