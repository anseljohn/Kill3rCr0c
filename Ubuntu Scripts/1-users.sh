# # !/bin/bash

l=$(grep "^UID_MIN" /etc/login.defs)
l1=$(grep "^UID_MAX" /etc/login.defs)

users=$(awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( $3 >= min && $3 <= max ) print $1}' /etc/passwd)
set -f
userArray=(${users// /})

# check to see if user is a valid user, if not, remove
for name in "${userArray[@]}"; do
  isValid=false;
  doIFS=$"\n"
  set -f
  for validName in $(cat < "users.txt"); do
    if [ $name = $validName ] ; then
      isValid=true
    fi
  done
  if [ "$isValid" = false ] ; then
    userdel $name
  fi
done

# check to see if valid user exists, if not, add
doIFS=$"\n"
set -f
for validName in $(cat < "users.txt") ; do
  isExisting=false
  for name in "${userArray[@]}" ; do
    if [ $validName = $name ]; then
      isExisting=true
    fi
  done
  if [ "$isExisting" = false ] ; then
    echo -e "123qwe!@#QWE\n123qwe!@#QWE\n\n\n\n\ny" | adduser $validName
  fi
done