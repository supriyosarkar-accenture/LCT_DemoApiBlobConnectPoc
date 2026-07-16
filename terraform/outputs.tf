output "resource_group_name" {
  value = module.resource_group.name
}

output "storage_account_name" {
  value = module.storage_account.name
}

output "blob_container_name" {
  value = module.storage_account.container_name
}

output "blob_endpoint" {
  value = module.storage_account.primary_blob_endpoint
}