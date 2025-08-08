#!/bin/bash
apt-get update -y && apt-get install nginx -y
systemctl enable nginx && systemctl start nginx
echo "Hi all! This is the NEW version deployed at $(date)" > /var/www/html/index.nginx-debian.html
