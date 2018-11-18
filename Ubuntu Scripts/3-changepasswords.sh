#!/bin/bash

l=$(grep "^UID_MIN" /etc/login.defs)
l1=$(grep "^UID_MAX" /etc/login.defs)

users=$(awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( $3 >= min && $3 <= max ) print $1}' /etc/passwd)
set -f
userArray=(${users// /})

for names in "${userArray[@]}"
do
   passwd $names 1q2w!Q@W
done