#!/bin/bash
#This script checks the health status of an AWS EC2 instance
wordCount=`aws ec2 describe-instance-status --instance-id $1 | wc -l`

if [ $# -lt 1 ]; then
	echo "Please enter instance ID"
else
	if [ $wordCount -eq 3 ]; then
		echo "Instance is not running"
        elif aws ec2 describe-instance-status --instance-id $1; then
		echo "the instance is running"
	else
		echo "No such instance running"
	fi
fi



