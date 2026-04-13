#!/bin/bash
set -e

# run once before terraform init to setup remote state storage

RESOURCE_GROUP="rg-tfstate"
STORAGE_ACCOUNT="sttfstatewb"   # change to something unique
CONTAINER="tfstate"
LOCATION="westeurope"

az group create \
  --name $RESOURCE_GROUP \
  --location $LOCATION

az storage account create \
  --name $STORAGE_ACCOUNT \
  --resource-group $RESOURCE_GROUP \
  --location $LOCATION \
  --sku Standard_LRS

az storage container create \
  --name $CONTAINER \
  --account-name $STORAGE_ACCOUNT

echo "Done. Use these values in your backend block:"
echo "  resource_group_name  = \"$RESOURCE_GROUP\""
echo "  storage_account_name = \"$STORAGE_ACCOUNT\""
echo "  container_name       = \"$CONTAINER\""
