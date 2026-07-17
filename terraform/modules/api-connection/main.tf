resource "azapi_resource" "connection" {
  type      = "Microsoft.Web/connections@2016-06-01"
  name      = var.name
  parent_id = var.resource_group_id
  location  = var.location
  schema_validation_enabled = false
  response_export_values = []
  body = {
    kind = "V1"
    properties = {
      api = {
        id = var.managed_api_id
      }
      displayName = "new_conn_282d2"
      connectionState = "Enabled"
      parameterValueSet = {
        name   = "managedIdentityAuth"
        values = {}
      }
    }
  }
}
