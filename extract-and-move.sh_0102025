#!/bin/bash
set -e  # Exit on error

DEPLOY_DIR="/tmp/deployment"
TARGET_DIR="/opt/lampp/htdocs"

echo "Checking for ZIP files..."
if ls $DEPLOY_DIR/*.zip 1> /dev/null 2>&1; then
    echo "ZIP file found! Extracting..."
    unzip -o $DEPLOY_DIR/*.zip -d $DEPLOY_DIR
else
    echo "No ZIP file found. Assuming files are already extracted."
fi

echo "Moving files to $TARGET_DIR..."
sudo mv $DEPLOY_DIR/* $TARGET_DIR/

echo "Setting correct permissions..."
sudo chown -R daemon:daemon $TARGET_DIR
sudo chmod -R 755 $TARGET_DIR

echo "Deployment files moved successfully!"

