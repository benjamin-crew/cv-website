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

data "azurerm_client_config" "current" {
}

data "azurerm_subscription" "current" {
}

data "azurerm_windows_function_app" "func" {
  resource_group_name = var.rg_name
  name                = var.function_app_name

  depends_on = [
    module.keyvault_acmebot
  ]
}