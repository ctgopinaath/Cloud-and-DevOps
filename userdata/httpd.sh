#!/bin/bash
yum update -y	#update your OS
yum install httpd.x86_64 -y # Install your httpd package
systemctl start httpd.service #start httpd
systemctl enable httpd.service # enable httpd
echo “Hello World ” > /var/www/html/index.html  #add the content to web page