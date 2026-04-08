output "app_service_url" {
  description = "URL of the deployed app service"
  value       = "https://${azurerm_linux_web_app.main.default_hostname}"
}

output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.main.name
}

output "key_vault_uri" {
  description = "URI of the key vault"
  value       = azurerm_key_vault.main.vault_uri
}

output "storage_account_name" {
  description = "Name of the storage account"
  value       = azurerm_storage_account.main.name
}