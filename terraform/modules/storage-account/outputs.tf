output "id" {
  value = azurerm_storage_account.this.id
}

output "name" {
  value = azurerm_storage_account.this.name
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.this.primary_blob_endpoint
}

output "container_name" {
  value = azurerm_storage_container.this.name
}

output "storage_account_id" {
  description = "The Storage Account resource ID."
  value       = azurerm_storage_account.this.id
}