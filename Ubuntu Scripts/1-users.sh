<<<<<<< HEAD
# # !/bin/bash
=======
#!/bin/bash
#TO-DO: Change into three methods: 
# 1) parse through users.txt, check if user exists, if not, add
# 2) parse through users, check if is in users.txt, if not, remove
# 3) parse through users, check if admin and is not in admins.txt, if admin and not in admins.txt, remove
>>>>>>> 8d20e312ca64915d4efc20b8d2fed2a84b06e214

l=$(grep "^UID_MIN" /etc/login.defs)
l1=$(grep "^UID_MAX" /etc/login.defs)

users=$(awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( $3 >= min && $3 <= max ) print $1}' /etc/passwd)
set -f
userArray=(${users// /})

# check to see if user is a valid user, if not, remove
for name in "${userArray[@]}" ; do
  isValid=false;
  doIFS=$"\n"
  set -f
  for validName in $(cat < "users.txt") ; do
    if [ $name = $validName ] ; then
      isValid=true
    fi
  done
  if [ "$isValid" = false ] ; then
    userdel $name
  fi
done

# update userArray
users=$(awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( $3 >= min && $3 <= max ) print $1}' /etc/passwd)
set -f
userArray=(${users// /})

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
    echo -e "123qwe!@#QWE\n123qwe!@#QWE\n\n\n\n\ny" | adduser $validName --force-badname
  fi
done