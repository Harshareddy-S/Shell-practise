#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

    echo "Try in root directory"


fi

dnf install nginx -y

if [ $? -ne 0 ]; then

    echo "nginx installing ...Failure"
    
else

    echo "nginx isntalling ... Success"

fi


dnf install Mysql -y

if [ $? -ne 0 ]; then

    echo "Mysql installing ...Failure"
    
else

    echo "Mysql isntalling ... Success"

fi

dnf install mongodb -y

if [ $? -ne 0 ]; then

    echo "mongodb installing ...Failure"
    
else

    echo "mongodb isntalling ... Success"

fi