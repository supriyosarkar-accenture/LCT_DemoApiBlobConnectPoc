resource "azurerm_storage_account" "this" {

  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
  location            = var.location
  allow_nested_items_to_be_public = false
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}

resource "azurerm_storage_container" "this" {

  name                  = var.blob_container_name
  storage_account_id    = azurerm_storage_account.this.id
  container_access_type = "private"

}