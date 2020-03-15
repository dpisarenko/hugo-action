#!/bin/bash
set -e

echo "#################################################"
echo "Starting the Hugo Action"

echo "Trying to find the right directory"

ls -al /home/runner/work/hugo-wp-site/hugo-wp-site
hugo "$@"

echo "#################################################"
echo "Completed the Hugo Action"
