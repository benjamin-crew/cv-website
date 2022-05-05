terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }

  required_version = ">= 1.1.8"
}

module "storage" {
  source = "../../modules/storage"

  rg_name              = var.rg_name
  storage_account_name = var.storage_account_name
  sa_tags              = var.sa_tags
}