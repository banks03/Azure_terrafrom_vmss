terraform {
  required_version = ">=1.3.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = "~>2.0"
      version = "~>3.40"
    }
  }
}

provider "azurerm" {
  features {}
}
