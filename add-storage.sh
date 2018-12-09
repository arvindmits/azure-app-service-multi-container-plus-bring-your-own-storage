#!/bin/bash
source ../azure-storage.sh # add your AZURE_STORAGE env export here
az webapp config storage-account add -g MultiContainerBYOStorage -n $1 --custom-id share \
  --storage-type AzureFiles --account-name byoaccount \
  --share-name nginxcontent --mount-path /usr/share/nginx/html \
  --access-key $AZURE_STORAGE
