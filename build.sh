#!/bin/bash

echo "================================"
echo "       Jenkins Installation"
echo "================================"

echo "Updating system packages..."
sudo apt update -y

echo "Installing Java..."
sudo apt install fontconfig openjdk-21-jre -y

echo "Checking Java version..."
java -version

echo "Adding Jenkins repository key..."
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "Adding Jenkins repository..."
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

echo "Updating package list..."
sudo apt update -y

echo "Installing Jenkins..."
sudo apt install jenkins -y

echo "Starting Jenkins service..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "Checking Jenkins status..."
sudo systemctl status jenkins --no-pager

echo "================================"
echo " Jenkins installation completed!"
echo " Open http://localhost:8080"
echo "================================"

echo "Initial Jenkins Admin Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
