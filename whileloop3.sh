 #!/bin/bash

  while read input 
  do 
     echo " from script $input "
  done < <(grep input common.sh)
# <(command) is equal to command > file1, this saves the effort of creating temp file
