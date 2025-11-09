terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.50.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "NetworkWatcherRG"
  #   storage_account_name = "storageaccounteeastus"
  #   container_name       = "tfstate"
  #   key                  = "terraform_dev.tfstate"
  # }
}
provider "azurerm" {
  features {
    # key_vault = {
    #   purge_soft_delete_on_destroy    = true
    #   recover_soft_deleted_key_vaults = true
    # }
  }
  subscription_id = "10faea19-035c-4025-9136-201ca3e88e6d"
}
