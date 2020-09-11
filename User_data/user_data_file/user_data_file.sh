#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
echo "<h1>This is deployed using terraform user data from a file</h1>" | sudo tee /var/www/html/index.html
service httpd start
