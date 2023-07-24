#!/bin/bash

# Automatically provide "yes" response to all prompts
yes | sudo yum update

# Automatically provide "yes" response to all prompts
yes | sudo yum install nginx

# Start Nginx without requiring user input
sudo nginx

# #!/bin/bash
# sudo apt update -y &&
# sudo apt install -y nginx
# chkconfig nginx on
# echo "Hello Server 1" > /var/www/html/index.html
# service nginx start