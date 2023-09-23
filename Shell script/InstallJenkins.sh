#! /bin/bash

# Install Java
sudo yum install java -y
sudo yum install fontconfig java-11-openjdk -y
sudo amazon-linux-extras install java-openjdk11 -y

# Download and Install Jenkins
sudo yum update –y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y

# Start Jenkins
sudo systemctl start jenkins

# Enable Jenkins with systemctl
sudo systemctl enable jenkins

# Install Git SCM
sudo yum install git -y

# Make sure Jenkins comes up/on when reboot
sudo chkconfig jenkins on