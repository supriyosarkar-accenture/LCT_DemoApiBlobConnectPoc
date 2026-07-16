resource "azurerm_logic_app_workflow" "this" {

  name                = var.logic_app_name
  location            = var.location
  resource_group_name = var.resource_group_name

  identity {
    type = "SystemAssigned"
  }
  lifecycle {
    ignore_changes = [
      parameters,
      workflow_parameters
    ]
  }

  tags = var.tags
}