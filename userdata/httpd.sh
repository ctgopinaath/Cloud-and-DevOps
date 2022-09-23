#!/bin/bash
yum update -y	#update your OS

#Installing and Configuring SSM agent in EC2 instance
mkdir /tmp/ssm
curl https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm -o /tmp/ssm/amazon-ssm-agent.rpm
sudo yum install -y /tmp/ssm/amazon-ssm-agent.rpm
sudo systemctl start amazon-ssm-agent
sudo systemctl enable amazon-ssm-agent
# edit the code, id and region in the command below
sudo amazon-ssm-agent -register -code "activation-code" -id "activation-id" -region "region"



#Installing and Configuring httpd 
yum install httpd.x86_64 -y # Install your httpd package
systemctl start httpd.service #start httpd
systemctl enable httpd.service # enable httpd
echo "<h1>Hello World from $(hostname)</h1>" > /var/www/html/index.html  #add the content to web page





{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "redshift:ListDatabases",
                "redshift:DescribeClusterTracks",
                "redshift:DescribeEvents",
                "redshift:CreateSavedQuery",
                "redshift:ViewQueriesInConsole",
                "redshift:DescribeClusterDbRevisions",
                "redshift:ViewQueriesFromConsole",
                "redshift:ListTables",
                "redshift:CancelQuery",
                "redshift:ListSchemas",
                "redshift:DescribeQuery",
                "redshift:DescribeNodeConfigurationOptions",
                "redshift:ListSavedQueries",
                "redshift:DescribeClusters",
                "redshift:ExecuteQuery"
            ],
            "Resource": "*"
        }
    ]
}
