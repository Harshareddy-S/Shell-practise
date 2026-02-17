#!/bin/bash

NUM1=100
NUM2=HARSHA

SUM=$(($NUM1*$NUM2))

echo "total is: $SUM"

FRUITS=("BANANA" "APPLE" "POMO")

echo "fruits are: ${FRUITS[@]}"
echo "First fruits is: ${FRUITS[0]}"