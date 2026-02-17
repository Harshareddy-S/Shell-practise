#!/bin/bash

VALUE=&(id -u)

if [ $VALUE -ne 0 ];then
echo "please try in root directory"
fi

echo "ngnix installing..."

dnf install ngnix -y