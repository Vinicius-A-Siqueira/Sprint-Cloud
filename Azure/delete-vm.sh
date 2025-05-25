#!/bin/bash

RESOURCE_GROUP="mottu-rg"

az group delete --name $RESOURCE_GROUP --yes --no-wait
