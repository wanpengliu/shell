#!/bin/bash
while true
    do
  
    read 
       case "${REPLY}" in

       1) echo "user entered 1"
       ;;
       2) echo "user entered 2";;
       q|Q) exit 0 ;;
       *) echo "bye"; exit 0;;
       esac
done
