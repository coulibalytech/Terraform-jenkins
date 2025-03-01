#!/bin/bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install Docker and dependencies
sudo apt install -y docker.io docker-compose
sudo usermod -aG docker ubuntu

# Enable and start Docker
sudo systemctl enable docker
sudo systemctl start docker

# Create Jenkins Docker Compose file
cat <<EOF > ~/docker-compose.yml
version: "3"
services:
  jenkins:
    image: jenkins/jenkins:lts
    ports:
      - "8080:8080"
      - "50000:50000"
    volumes:
      - jenkins_data:/var/jenkins_home
volumes:
  jenkins_data:
EOF

# Start Jenkins container
cd ~ && docker-compose up -d
