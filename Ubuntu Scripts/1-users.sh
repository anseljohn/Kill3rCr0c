#!/bin/bash
#TO-DO: Change into three methods: 
# 1) parse through users.txt, check if user exists, if not, add
# 2) parse through users, check if is in users.txt, if not, remove
# 3) parse through users, check if admin and is not in admins.txt, if admin and not in admins.txt, remove

l=$(grep "^UID_MIN" /etc/login.defs)
l1=$(grep "^UID_MAX" /etc/login.defs)

users=$(awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( $3 >= min && $3 <= max ) print $1}' /etc/passwd)
set -f
userArray=(${users// /})

function rem {
  for names in "${userArray[@]}"
  do
    read -p "Remove $names? [Yy/Nn]  " -r yn
    case $yn in
      [Yy]* ) userdel $names && rm -rf /home/$names; echo "User \"$names\" has been deleted";;
      [Nn]* ) ;;
      * ) echo "Please enter Yes or No"; prompt;;
    esac
  done
}

function add {
  while true
  do
      echo
      read -p "Username: " -r resp
      read -p "Add user: $resp ? [Yy/Nn]>>  " -r yn
      case $yn in
          [Yy]* ) 
            adduser --force-badname $resp
            echo -ne "\n*\n*\n*\nUser \"$resp\" has been added\n"
            ;;
          [Nn]* ) ;;
          * ) 
            echo -ne "Please enter Yes or No [Yy/Nn]\n"
            add
            ;;
      esac
  done
}

function prompt {
  read -p "Remove or add users? [Rr/Aa]  " -r ra
  case $ra in
    [Rr]* ) rem;;
    [Aa]* ) add;;
  esac
}
prompt
