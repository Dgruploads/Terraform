#!/bin/bash
sudo yum install httpd -y
echo "This is running on infara provisioned by terraform " > /var/www/html/index.html
sudo service httpd start
