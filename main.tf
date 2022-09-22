terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.1.0"
    }
  }
    backend "azurerm" {
        resource_group_name = "terratest"
        storage_account_name = "terraformdemo1"
        container_name       = "tfstatefile"
        key                  = "dev.terraform.tfstate"

  }
}

provider "azurerm" {
  features {
    }
}

# Create a Resource Group

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}