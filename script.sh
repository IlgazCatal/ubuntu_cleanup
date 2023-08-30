#!/bin/bash

check=(apt show nala)
if $check=false ; then
        apt install nala
        nala autopurge
        nala autoremove
        nala clean
        nala update
        nala upgrade
        clear
else
        nala autopurge
        nala autoremove
        nala clean
        nala update
        nala upgrade
        clear
fi


if [ $1="rm" ]
then
  echo "Removing Nala..."
  apt remove nala
  clear
fi
