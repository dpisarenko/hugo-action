#!/bin/bash
set -e

echo "#################################################"
echo "Starting the Hugo Action"

echo "Searching for the directory with Hugo source code:"
find / -name "*archetypes*"


hugo "$@"

echo "#################################################"
echo "Completed the Hugo Action"
