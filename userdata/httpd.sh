#!/bin/bash
yum update -y	#update your OS

sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
sudo systemctl status amazon-ssm-agent
sudo systemctl start amazon-ssm-agent

#Installing and Configuring httpd 
yum install httpd.x86_64 -y # Install your httpd package
systemctl start httpd.service #start httpd
systemctl enable httpd.service # enable httpd
echo "<h1>Hello World from $(hostname)</h1>" > /var/www/html/index.html  #add the content to web page