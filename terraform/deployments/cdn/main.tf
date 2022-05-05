terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.1.0"
    }
  }

  required_version = ">= 1.1.8"
}

module "cdn" {
  source = "../../modules/cdn"

  rg_name              = var.rg_name
  kv_name              = var.kv_name
  storage_account_name = var.storage_account_name
  tenant_id            = var.tenant_id
  spn_object_id        = var.spn_object_id
  cdn_profile_name     = var.cdn_profile_name
  cdn_profile_location = var.cdn_profile_location
  cdn_endpoint_name    = var.cdn_endpoint_name
  cdn_object_id        = var.cdn_object_id
  dns_zone_name        = var.dns_zone_name
  dns_rg_name          = var.dns_rg_name
  dns_cname_name       = var.dns_cname_name
  cert_name            = var.cert_name
}
