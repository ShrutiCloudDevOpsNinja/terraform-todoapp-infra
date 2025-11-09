terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-devopsinsiders"
    storage_account_name = "twostates"
    container_name       = "tfstate"
    key                  = "prod.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "fdab0b83-a7b6-42e6-9227-9e2fc4f971cd"
}
