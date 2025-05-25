#!/bin/bash

RESOURCE_GROUP="mottu-rg"
VM_NAME="mottu-vm"
LOCATION="eastus"
IMAGE="UbuntuLTS"
ADMIN_USERNAME="azureuser"
SSH_KEY_PATH="$HOME/.ssh/id_rsa.pub"

az group create --name $RESOURCE_GROUP --location $LOCATION

az vm create \
  --resource-group $RESOURCE_GROUP \
  --name $VM_NAME \
  --image $IMAGE \
  --admin-username $ADMIN_USERNAME \
  --ssh-key-value "$(< $SSH_KEY_PATH)" \
  --output json

az vm list-ip-addresses -g $RESOURCE_GROUP -n $VM_NAME --query "[].virtualMachine.network.publicIpAddresses[].ipAddress" --output tsv
