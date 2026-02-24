#!/bin/bash


USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"

if [ $USERID -ne 0 ]; then
    echo -e "$R Try in root directory $N" |tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE() {
if [ $1 -ne 0 ]; then
    echo -e "$2 ...$R Failure $N" |tee -a $LOGS_FILE
    exit 1
else
    echo -e  "$2 ... $B Success $N" |tee -a $LOGS_FILE
fi
}

for package in $@
do 
    dnf list installed $package &>>$LOGS_FILE
    if [ $? -ne 0 ]; then
        echo -e "$B $package is not installed..instlling now $N" 
        dnf install $package -y &>>$LOGS_FILE
        VALIDATE $? "$package intalling"

    else
        echo -e "$package already installed.. $Y skipping installation $N" 
    fi 
done
