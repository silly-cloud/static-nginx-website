# Static Site Deployment Script

Simple bash deployment script using **rsync** + **nginx reload**  
→ Built as part of the [roadmap.sh Static Site Server project](https://roadmap.sh/projects/static-site-server)

## Project Goal (from roadmap.sh)

This script helps complete the **Static Site Server** beginner project:

> Setup a basic Linux server and configure it to serve a static site using Nginx.  
> Learn how to use `rsync` to deploy changes to the server.

**Core requirements covered**:
- Set up remote Linux server + SSH access
- Install & configure Nginx
- Create simple static site (HTML + CSS + images)
- Use `rsync` to update remote server from local files
- (Optional) Serve via domain or server IP

## Features of this script

- Syncs your local static site files to the server's web root (`/var/www/html`)
- Uses `rsync -avz` for efficient, preserved-attributes transfer
- Reloads nginx gracefully after deployment (`systemctl reload nginx`)
- Strict mode (`set -euo pipefail`) for safer execution
- Designed to run from **WSL** (Windows → WSL → remote server) or any Linux/macOS


