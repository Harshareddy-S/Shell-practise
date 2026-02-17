#!/bin/bash

echo "all var: $@"
echo "number var: $#"
echo "script name: $0"
echo "working directory: $PWD "
echo "who runs: $USER"
echo "home directory of the user: $HOME"
echo "PID of the script: $$"

sleep 100 &

echo "if process run in backend PID : $!"
echo "all variables $*"
