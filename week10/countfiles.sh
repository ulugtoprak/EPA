#!/bin/bash

cnt=`ls /tmp | wc -l`
max=7

if [ $cnt -ge $max ]; then
echo " `date` Max number of files (cnt) exceeded in /tmp >> /home/epa/log.txt "
fi
