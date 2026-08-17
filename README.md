# Nginx Auto Install Script

A small Bash script that automates the initial installation and startup of Nginx on a Debian/Ubuntu VPS.

## What It Does

The script:

1. Updates the APT package index.
2. Installs Nginx.
3. Enables Nginx to start automatically at boot.
4. Starts the Nginx service.
5. Validates the Nginx configuration.
6. Displays the service status.

## Requirements

* Debian or Ubuntu server
* `sudo` privileges
* Internet connectivity
* Bash

## Usage

Clone the repository:

```bash
git clone <repository-url>
cd <repository-directory>
```

Make the script executable:

```bash
chmod +x scripts/install-nginx.sh
```

Run it:

```bash
./scripts/install-nginx.sh
```

## Verification

Check Nginx:

```bash
sudo systemctl status nginx
```

Test the configuration:

```bash
sudo nginx -t
```

Test the web server locally:

```bash
curl -I http://localhost
```

A successful installation should return an HTTP response from Nginx.

## Script

```bash
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
```

## Purpose

This script demonstrates basic Linux server administration and Bash automation by turning the initial Nginx deployment into a repeatable procedure.

