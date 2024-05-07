terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.91.0"
    }
  }

  backend "azurerm" {
    resource_group_name                   = "my-remote-state-rg"
    storage_account_name                  = "myremotestatestorageacc"
    container_name                        = "myremotecontainer"
    key                                   = "myremotestateprod.tfstate"
  }

}


provider "azurerm" {
  features {}
  client_id                               = var.sp_client_id
  client_secret                           = var.sp_client_secret
  tenant_id                               = var.sp_tenant_id
  subscription_id                         = var.sp_subscription_id
}


