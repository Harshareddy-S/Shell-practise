#!/bin/bash

read NUM

if [$NUM > 10]; then

echo "$NUM is greater than 10"

elif [$NUM < 10];then
echo "$NUM is less than 10"

fi
echo "$NUM is 10"