# Azure Web Service Infrastructure Setup
This README outlines the architecture and setup instructions for a web service on Azure that supports an SQL Database, handles 1000 requests per second (RPS), integrates with external services, and ensures security, high availability, and fault tolerance.
## Requirements

**SQL Database**: A secure, managed database with automatic backups.
1000 RPS: Infrastructure capable of handling 1000 requests per second.
External Service Integration: Secure API connectivity with external applications.
Security, High Availability, Fault Tolerance: Protected, resilient, and redundant design.

## Architecture Overview

Virtual Network (VNet): Segmented with subnets across multiple Availability Zones.
Subnets:
Web Servers Subnet
Database Servers Subnet


Network Security Groups (NSGs): Controls traffic to subnets.
Azure SQL Database: Geo-redundant with failover groups for high availability.
Virtual Machine Scale Set (VMSS): Autoscaling with 10+ instances to handle 1000 RPS.
Azure Load Balancer: Distributes traffic across VMSS instances.
Azure Firewall: Secures the network with threat intelligence.
Azure API Management (APIM): Facilitates secure integration with external services.
Azure Monitor: Monitors health and performance.

## Prerequisites

An Azure subscription.
Azure CLI installed (az --version to verify).
Basic understanding of Azure services and networking.

## Setup Instructions

1. Create Resource Group and Virtual Network
Set up a resource group and VNet with subnets for web and database servers.


2. Deploy Azure SQL Database
Configure with automatic backups and geo-redundant failover groups.


3. Deploy VMSS
Launch with at least 10 instances and enable autoscaling.


4. Configure Load Balancer
Attach to VMSS for traffic distribution.


5. Set Up Azure Firewall
Protect the network with filtering rules.


6. Implement API Management
Enable secure integration with external services.


7. Enable Monitoring
Use Azure Monitor for performance tracking.



## Running the Infrastructure Script
The infra.sh script automates the setup using Azure CLI commands. Follow these steps:

1. Log in to Azure CLI:'az login'


2. Make the Script Executable:'chmod +x infra.sh'


3. Run the Script:'./infra.sh'


Verify Deployment:
Check the Azure Portal or use az resource list --resource-group myResourceGroup to confirm resources are created.



## infra.sh Script
The accompanying infra.sh script contains the Azure CLI commands to deploy the infrastructure. Key configurations include:

Resource group creation.
VNet and subnet setup with NSGs.
Azure SQL Database with failover groups.
VMSS with autoscaling.
Load Balancer and Firewall deployment.
API Management setup.

### Additional Notes

Security: Use Azure Key Vault for secrets and Managed Identities for authentication.
Testing: Validate 1000 RPS capacity with load testing tools (e.g., Azure Load Testing).
Optimization: Adjust VMSS instance size or count based on actual performance metrics.

This setup provides a simple yet robust foundation for the web service, meeting all specified requirements.
