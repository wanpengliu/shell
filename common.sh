#!/bin/bash

argu_validation() {
	if [ "$1" -eq "$2" ]
	then
		return 0
	else
		return 1
	fi
}

test_argu_validation(){

	argu_validation 2 2
	if [ "$?" -eq 0 ] ; then
		echo "success test"
	else
		echo "failed"
fi
}

while_loop(){

	a=0
	for x in $* 
	do
		((a = a + 1))
		echo $a
done 

}

while_loop2(){

	a=0
	while [ "$a" -lt 5 ]
	do
		(( a = a + 1 ))
		echo "$a"
	done
}

while_loop3(){

	a=0
	while(true) 
	do
		(( a = a + 1 ))
		echo "$a"
		if [ "$a" -eq 10 ]
		then
			break ;
		fi
	done
}

if_condition(){

 if [ "$1" = "a" ]
	then
		echo "input character a"
elif [ "$1" = "b" ]
	then
		echo "input character b"
else
	echo "input $1"
fi



}
