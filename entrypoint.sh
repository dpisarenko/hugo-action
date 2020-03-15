#!/bin/bash
set -e

echo "#################################################"
echo "Starting the Hugo Action"

echo "Trying to find the right directory"

echo "1"
ls -al /home/runner/work/_temp/_github_home

echo "2"
ls -al /github/home

echo "3"
ls -al /home/runner/work/_temp/_github_workflow

echo "4"
ls -al /github/workflow

echo "5"
ls -al /home/runner/work/hugo-wp-site/hugo-wp-site

echo "6"
ls -al /github/workspace

hugo "$@"

echo "#################################################"
echo "Completed the Hugo Action"
