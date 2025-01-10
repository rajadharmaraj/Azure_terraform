output "resource_group_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.rg.id
}

output "storage_account_id" {
  description = "Storage Account ID"
  value       = azurerm_storage_account.sa.id
}

output "storage_account_primary_access_key" {
  description = "Storage Account primary access key"
  value       = azurerm_storage_account.sa.primary_access_key
  sensitive   = true
}

output "storage_account_primary_connection_string" {
  description = "Storage Account primary connection string"
  value       = azurerm_storage_account.sa.primary_connection_string
  sensitive   = true
}
