resource "azurerm_key_vault_access_policy" "kv_access" {
  key_vault_id = data.azurerm_key_vault.kv.id
  tenant_id    = var.tenant_id
  object_id    = var.spn_object_id

  certificate_permissions = [
    "Create",
    "Delete",
    "Import",
    "List",
    "Get",
    "Purge",
    "Update"
  ]

}

resource "azurerm_key_vault_access_policy" "kv_access_cdn" {
  key_vault_id = data.azurerm_key_vault.kv.id
  tenant_id    = var.tenant_id
  object_id    = var.cdn_object_id

  secret_permissions = [
    "Get",
    "List"
  ]

  certificate_permissions = [
    "Get",
    "List"
  ]

}
