#!/bin/bash

l=$(grep "^UID_MIN" /etc/login.defs)
l1=$(grep "^UID_MAX" /etc/login.defs)

users=$(awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( $3 >= min && $3 <= max ) print $1}' /etc/passwd)
set -f
userArray=(${users// /})

for names in "${userArray[@]}"
do
   isAdmin=false
   doIFS=$'\n'
   set -f
   for i in $(cat < "admins.txt"); do
      if [ $names = $i ] ; then
         isAdmin=true;
      fi
   done
   if [ "$isAdmin" = false ] ; then
      echo -e "123qwe!@#QWE\n123qwe!@#QWE" | passwd $names
   fi
done