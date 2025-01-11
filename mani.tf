# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = merge(var.tags, {
    Environment = var.environment
    ManagedBy   = "Terraform"
  })
}
resource "random_string" "storage_account_name" {
  length = 12
  special = false
  upper = false
  lower = true
  
}

# Storage Account
resource "azurerm_storage_account" "sa" {
  name                     = random_string.storage_account_name.length
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication
  is_hns_enabled          = true  # Enable hierarchical namespace for Gen2

  blob_properties {
    versioning_enabled = true
    
    container_delete_retention_policy {
      days = 7
    }
  }

  tags = merge(var.tags, {
    Environment = var.environment
    ManagedBy   = "Terraform"
  })
}

# Create a container in the storage account
resource "azurerm_storage_container" "container" {
  name                  = "data"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
