#!/bin/bash

declare -a baddies=(
    # 'netcat'
    # 'nc'
    # 'netcat-openbsd'
    # 'john'
    # 'johntheripper
)

for b in "${baddies[@]}"
do
    apt-get purge $b
    apt-get purge --auto-remove $b
done
