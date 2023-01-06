#!/bin/sh

set -o errexit
# set -o xtrace  # used for debugging

echo "Create resource group"

echo "\nEnter Resource Group Name:"
read rg_name

echo "\nEnter Resource Group location (azure region):"
read location

echo "\nCreating Resource Group"

result=$(az group create \
    --name  $rg_name\
    --location $location)

status=$?

[ $status -eq 0 ] && echo "\nResource Group Created" || echo "\nError creating Resource Group \n $result"
