#!/bin/bash

# Variables
RESOURCE_GROUP="myResourceGroup"
LOCATION="eastus"
VNET_NAME="myVNet"
SUBNET_WEB="webSubnet"
SUBNET_DB="dbSubnet"
SQL_SERVER_NAME="myserver$RANDOM" # Append random to ensure uniqueness
SQL_DB_NAME="mydb"
VMSS_NAME="myVMSS"
LB_NAME="myLB"
FIREWALL_NAME="myFirewall"
APIM_NAME="myAPIM"

# Create Resource Group
az group create --name $RESOURCE_GROUP --location $LOCATION

# Create VNet and Subnets
az network vnet create --resource-group $RESOURCE_GROUP --name $VNET_NAME --add
ett-zioe-ovp
