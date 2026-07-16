module "resource_group" {

  source = "./modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location

  tags = local.common_tags
}

module "storage_account" {

  source               = "./modules/storage-account"
  storage_account_name = var.storage_account_name
  resource_group_name  = module.resource_group.name
  location             = module.resource_group.location
  blob_container_name  = var.blob_container_name
  tags                 = local.common_tags
}