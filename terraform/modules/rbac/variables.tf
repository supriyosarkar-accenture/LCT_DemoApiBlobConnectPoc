variable "scope" {
  description = "The scope at which the role assignment applies."
  type        = string
}

variable "principal_id" {
  description = "The Object ID of the managed identity, service principal, or user."
  type        = string
}

variable "role_definition_name" {
  description = "The built-in Azure RBAC role to assign."
  type        = string
}