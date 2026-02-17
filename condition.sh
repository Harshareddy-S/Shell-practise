#!/bin/bash

echo "enter number:$NUM"

read NUM

if [ $NUM -gt 10 ]; then

echo "$NUM is greater than 10"

elif [ $NUM<10 ];then
echo "$NUM is less than 10"

else
echo "$NUM is 10"

fi
