# Azure Resource Group Module

This module creates an Azure Resource Group.

## Inputs

| Name     | Description                         | Required |
|----------|-------------------------------------|----------|
| name     | Name of the Resource Group          | Yes      |
| location | Azure region for the Resource Group | Yes      |
| tags     | Tags to apply                       | No       |

## Outputs

| Name     | Description |
|----------|-------------|
| id       | Resource Group ID |
| name     | Resource Group name |
| location | Resource Group location |

## Example Usage

```hcl
module "resource_group" {
  source = "git::https://github.com/<org>/terraform-modules.git//azure/core/resource-group?ref=v1.0.0"

  name     = "rg-dev"
  location = "eastus"
  tags = {
    environment = "dev"
  }
}
