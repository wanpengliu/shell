#!/bin/bash

greeting(){
    echo "hello $1"
}

add() {
    echo "$1 + $2" | bc -l
    }

subtract() {
  echo "$1 - $2" | bc -l
}

multiple() {
    echo "$1 * $2" | bc -l
}


divide() {
    echo "scale=3; $1 / $2 " | bc -l
}

findFile() {
   numb=$(find $1 -maxdepth 1 -type f 2>/dev/null |   wc -l)
   echo -n "find $numb files in total"
}


findDir() {
    find $1 -maxdepth 1 -type d 2>/dev/null | wc -l
}

dirValidation() {
  if [ -d $1 ]
      then 
      return 0
      else 
          return 1
fi          
}


fileValidation() {
    if [ -f $1 ]
        then 
        return 0
        else 
            return 1
fi
}

printargus() {
    echo "total number of arguments $#"
    for x in $@ 
        do
            echo $x
            done
}


printargus2() {
    echo "total number of arguments $#"
    for x in $* 
        do
            echo $x
            done
}

validateargu() {

  if [ "$1" -ne "$2" ]
     then
      echo "Expected number of input paramters are $2"
      else
      return 0
 fi
}


testvalidateargu() {
  
  validateargu 2 2 
 if [ "$?" -eq 0 ]
     then
      echo "success"
 fi

}
