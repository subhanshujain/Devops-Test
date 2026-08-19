terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "backendrg"
    storage_account_name = "backendstor"
    container_name       = "backendstate"
    key                  = "nic.tfstate"

  }

}

provider "azurerm" {
  features {}

}
