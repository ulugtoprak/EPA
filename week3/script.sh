#!/bin/bash

cnt=`grep processor /proc/cpuinfo | wc -l`

echo "Number of CPU's avaliable"
echo $cnt

if [ $cnt -le 2 ]; then

  echo "Insufficient CPU count, GoodBye!"

fi
