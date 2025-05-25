#!/bin/bash

VM_IP=$1
USERNAME="azureuser"

ssh ${USERNAME}@${VM_IP} << EOF
  sudo apt-get update
  sudo apt-get install -y docker.io
  sudo systemctl enable docker
  sudo systemctl start docker
  sudo usermod -aG docker $USER
EOF
