#!/bin/bash

trap 'input=x' SIGUSR1
while true
    do
   if [ "${input}" = "x" ]
       then
          echo "hello world" 
          sleep 5
   fi
done

# kill -s URS1 5256 
# find process ID first, then send usr1 signal , it will 
