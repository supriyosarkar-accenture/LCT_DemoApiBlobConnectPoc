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

module "app_service" {
  source = "./modules/app-service"

  app_service_plan_name = var.app_service_plan_name
  app_service_name      = var.app_service_name

  resource_group_name = module.resource_group.name
  location            = module.resource_group.location

  tags = local.common_tags
}

module "logic_app" {

  source              = "./modules/logic-app"
  logic_app_name      = var.logic_app_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  tags                = local.common_tags
}

module "rbac" {
  source = "./modules/rbac"

  scope                = module.storage_account.storage_account_id
  principal_id         = module.logic_app.principal_id
  role_definition_name = "Storage Blob Data Contributor"

  depends_on = [
    module.storage_account,
    module.logic_app
  ]
}