#!/bin/bash
apt update	#update your OS

sudo snap install amazon-ssm-agent --classic
sudo snap start amazon-ssm-agent