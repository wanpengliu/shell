#!/bin/bash

count=0

while(true)
    do
      count=$(ls [0-9]* 2>/dev/null | sort -u | wc -w ) 
      if (( count != 6 ))
          then
          numb=$(expr $RANDOM % 49  + 1)
          touch $numb
          else
              exit
          fi
      done
