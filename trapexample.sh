#!/bin/bash

trap 'echo nice try; sleep 5;' 2  
# trap control c, so that it won't exit

while true
    do
  
    read input
       case "${input}" in

       1) echo "user entered 1"
       ;;
       2) echo "user entered 2";;
       q|Q) exit 0 ;;
       *) echo "bye"; exit 0;;
       esac
done
