terraform {
  backend "azurerm" {
    resource_group_name = "dev2"
    storage_account_name = "storemfwmw3heqnyuk"
    container_name = "testcontainer"
    key = "terraform.state"
  }
}

provider "azurerm" {
  version = "2.0.0"
  features {}
}


resource "azurerm_storage_account" "TechTargetSG" {
  name                     = "ttstorage92"
  resource_group_name      = var.resourceGroupName
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "development"
  }
}