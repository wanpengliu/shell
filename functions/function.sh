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
    find $1 -maxdepth 1 -type f 2>/dev/null |   wc -l
}

findDir() {
    find $1 -maxdepth 1 -type d 2>/dev/null | wc -l
}
