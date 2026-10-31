#!/bin/bash

echo "=================================="
echo "       JENKINS AUTOMATION"
echo "=================================="

echo "Welcome to Jenkins!"

echo "Step 1: Update system packages"
echo "sudo apt update"

echo "Step 2: Install Java"
echo "sudo apt install openjdk-21-jre -y"

echo "Step 3: Add Jenkins repository"
echo "Add Jenkins GPG key and repository"

echo "Step 4: Install Jenkins"
echo "sudo apt install jenkins -y"

echo "Step 5: Start Jenkins"
echo "sudo systemctl start jenkins"

echo "Step 6: Enable Jenkins"
echo "sudo systemctl enable jenkins"

echo "Step 7: Check Jenkins status"
echo "sudo systemctl status jenkins"

echo "=================================="
echo "Jenkins setup instructions completed!"
echo "Access Jenkins at: http://localhost:8080"
echo "=================================="

echo "Last class"
