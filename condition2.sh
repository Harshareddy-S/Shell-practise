#!/bin/bash

NUM= $1

if [ $NUM -gt 20 ]; then
echo "$NUM is greater than 20 "

elif [$NUM -lt 20 ]; then
echo "$NUM is less than 20"

else "Given number is 20"

fi