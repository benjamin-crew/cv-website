terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }

  required_version = ">= 1.1.8"
}

module "key_vault" {
  source = "../modules/key_vault"

  rg_name   = var.rg_name
  kv_name   = var.kv_name
  tenant_id = var.tenant_id
}
