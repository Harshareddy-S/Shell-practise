#!/bin/bash

USERID=&(id -u)

if [ $USERID -ne 0 ]; then 
    echo "please try in root directory"
fi

echo "ngnix installing..."

dnf install ngnix -y