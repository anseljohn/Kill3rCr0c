#!/bin/bash

declare -a baddies=(
    'netcat'
    'nc'
    'netcat-openbsd'
    'john'
    'johntheripper'
    'hydra'
    'hydra-gtk'

    #'apache'
    #'nmap'
    #'samba'
)

for b in "${baddies[@]}"
do
    apt-get purge $b -y --force-yes
    apt-get purge --auto-remove $b -y --force-yes
done
