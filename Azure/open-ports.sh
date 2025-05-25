#!/bin/bash

RESOURCE_GROUP="mottu-rg"
VM_NAME="mottu-vm"

az vm open-port --resource-group $RESOURCE_GROUP --name $VM_NAME --port 5000
az vm open-port --resource-group $RESOURCE_GROUP --name $VM_NAME --port 5010
