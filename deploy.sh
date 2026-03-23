#!/bin/bash

SOURCE="/mnt/d/devops/projs"
DEST_HOST="/var/www/html"

set -euo pipefail

# DRY=""

# [[ "$*" == *--dry* || "*$" == *-n* ]] && DRY="--dry-run"

echo "Deploying ..."
echo 


sudo rsync -avz /mnt/d/devops/projs/index.html /var/www/html

systemctl reload nginx.service
