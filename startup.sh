#!/bin/bash
apt-get update -y
apt-get install nginx -y
systemctl enable nginx
systemctl start nginx
echo "Hi all! Hope you had a great session on Dual VPC, IPv4 & IPv6 Load Balancers!" > /var/www/html/index.nginx-debian.html
