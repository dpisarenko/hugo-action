#!/bin/bash
set -e

echo "#################################################"
echo "Starting the Hugo Action"

echo "pwd:"

pwd

echo "ls -al:"

ls -al

hugo "$@"

echo "#################################################"
echo "Completed the Hugo Action"
