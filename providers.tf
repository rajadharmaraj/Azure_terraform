terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.15.0"
    }
  }
# Configure the Azure Active Directory Provider
provider "azuread" {
  tenant_id = "00000000-0000-0000-0000-000000000000"
}
  backend "azurerm" {
    # Configure your backend settings here
  }
}

provider "azurerm" {
  features {}
}
