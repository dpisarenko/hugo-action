#!/bin/bash
set -e

echo "#################################################"
echo "Starting the Hugo Action"

git clone --branch prod https://github.com/dpisarenko/hugo-wp-site.git /hugo
cd /hugo
hugo "$@"
sftp


echo "#################################################"
echo "Completed the Hugo Action"
