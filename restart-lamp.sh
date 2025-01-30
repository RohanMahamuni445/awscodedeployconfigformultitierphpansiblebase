#!/bin/bash
set -e

echo "Restarting LAMP services..."
sudo /opt/lampp/lampp restart

echo "LAMP services restarted successfully!"

