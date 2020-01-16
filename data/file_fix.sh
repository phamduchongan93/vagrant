#!/bin/bash

# fix /bin/bash^M: bad interpreter: No such file or directory bug
# more details: https://askubuntu.com/questions/304999/not-able-to-execute-a-sh-file-bin-bashm-bad-interpreter

sed -i -e 's/\r$//' "$1" #fixing the conflict 
