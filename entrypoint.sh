#!/bin/bash
set -e

echo "#################################################"
echo "Starting the Hugo Action"

echo "Trying to find the right directory"

echo "4"
ls -al /github/workflow

echo "5"
ls -al /home/runner/work/hugo-wp-site/hugo-wp-site

echo "6"
ls -al /github/workspace

hugo "$@"

echo "#################################################"
echo "Completed the Hugo Action"
