#!/bin/bash

declare -a baddies={
  # 'netcat',
  # 'nc',
  # 'john',
  # 'johntheripper'
}

for b in "${baddies[@]}"
do
  apt-get purge $b
done