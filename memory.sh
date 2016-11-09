#! /bin/bash

touch history.txt
while (true)
do
	 CUR_TIME=$(date +'%Y-%m-%d %H:%M:%S')
	 CUR_MEM=$(sar -r | grep -i average | awk '{print $4}')
	 echo $CUR_TIME $CUR_MEM >> history.txt
	sleep 5
done
