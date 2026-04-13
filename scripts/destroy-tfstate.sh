#!/bin/bash
set -e

RESOURCE_GROUP="rg-tfstate"

az group delete \
  --name $RESOURCE_GROUP \
  --yes

echo "tfstate storage account deleted."
