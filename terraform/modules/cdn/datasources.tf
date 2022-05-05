data "azurerm_resource_group" "rg" {
  name = var.rg_name
}

data "azurerm_resource_group" "dns_rg" {
  name = var.dns_rg_name
}

data "azurerm_key_vault" "kv" {
  resource_group_name = var.rg_name
  name                = var.kv_name
}

data "azurerm_key_vault_certificate" "cdn-cert" {
  name         = var.cert_name
  key_vault_id = data.azurerm_key_vault.kv.id

  depends_on = [
    azurerm_key_vault_access_policy.kv_access
  ]
}

data "azurerm_storage_account" "sa" {
  resource_group_name = var.rg_name
  name                = var.storage_account_name

}

data "azurerm_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.dns_rg.name
}
