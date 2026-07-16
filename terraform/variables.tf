variable "resource_group_name" {
  type = string
}

variable "storage_account_name" {
  description = "Azure Storage Account name"
  type        = string
}

variable "blob_container_name" {
  description = "Blob container name"
  type        = string
}

variable "location" {
  type = string
}

variable "environment" {
  type = string
}