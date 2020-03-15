#!/bin/bash
set -e

echo "#################################################"
echo "Starting the Hugo Action"

cd /hugo
hugo "$@"

echo "#################################################"
echo "Completed the Hugo Action"
