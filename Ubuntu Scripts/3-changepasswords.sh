#!/bin/bash

for names in $(cat < "users.txt"); do
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