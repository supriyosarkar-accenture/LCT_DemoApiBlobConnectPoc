locals {

  common_tags = {
    Project     = "Azure Integration PoC"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }

}