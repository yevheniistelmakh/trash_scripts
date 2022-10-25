#!/bin/bash

UPDATE="`apt-get update >> /dev/null && sudo apt-get upgrade -y >> /dev/null`"

echo "`$UPDATE`"
if  echo "$UPDATE"; then
  echo "done"
else 
  echo "FAIL"
fi
