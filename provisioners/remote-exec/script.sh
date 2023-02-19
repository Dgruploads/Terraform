#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo echo "This is running on infara provisioned by terraform " > /tmp/index.html
sudo cp /tmp/index.html /var/www/html/
sudo service apache2 start
