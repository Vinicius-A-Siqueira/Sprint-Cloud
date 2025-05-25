#!/bin/bash

VM_IP=$1
USERNAME="azureuser"
IMAGE_NAME="seuusuario/mottu-fleet:latest"

ssh ${USERNAME}@${VM_IP} << EOF
  docker pull $IMAGE_NAME
  docker run -d -p 5010:5000 --name mottu-fleet-container $IMAGE_NAME
EOF
