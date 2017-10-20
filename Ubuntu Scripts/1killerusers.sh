#!/bin/bash

l=$(grep "^UID_MIN" /etc/login.defs)
l1=$(grep "^UID_MAX" /etc/login.defs)

users=$(awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( $3 >= min && $3 <= max ) print $0}' /etc/passwd)
set -f
userArray=(${users// /})

for names in "${userArray[@]}"
do
    read -p "Remove $names?" yn
    case $yn in
        [Yy]* ) deluser #; break;;
        [Nn]* ) 
        * ) echo "Please answer yes or no.";;
    esac
done