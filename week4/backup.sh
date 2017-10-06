#!/bin/bash

if [ $# -lt 2 ]; then
	echo "Provide source and destination directories both!"

else
	if [ $1"/"$2 -d  ]; then
		echo "Directory already exists!"
	else
		cd  $1
		mkdir $2
		tar -cvf backup.tar $2
	
	fi
fi
