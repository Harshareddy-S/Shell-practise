#!/bin/bash

TIMESTAMP=$(date +%s)

echo "execution time: $TIMESTAMP"

sleep 10

ENDTIME=$(date +%s)
echo "execution done at: $ENDTIME"

DIFF=$($TIMESTAMP-$ENDTIME)

echo "total execution time: $DIFF"


