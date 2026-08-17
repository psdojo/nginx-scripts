#!/usr/bin/env bash

set -euo pipefail

echo "Updating package index..."
sudo apt update

echo "Installing Nginx..."
sudo apt install -y nginx

echo "Enabling Nginx..."
sudo systemctl enable nginx

echo "Starting Nginx..."
sudo systemctl start nginx

echo "Validating Nginx configuration..."
sudo nginx -t

echo "Nginx status:"
sudo systemctl --no-pager --full status nginx

echo "Nginx installation completed."
