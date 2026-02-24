#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "please try in root directory"
    exit 1
fi


echo "ngnix install ....."

dnf install ngnix -y

if [ $? -ne 0 ]; then

echo "ngnix install .....failure"
exit 1

else 

echo "installing ngnix....Success"

fi