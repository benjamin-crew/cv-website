module "keyvault_acmebot" {
  source  = "shibayan/keyvault-acmebot/azurerm"
  version = "~> 1.0"

  function_app_name     = var.function_app_name
  app_service_plan_name = var.app_service_plan_name
  storage_account_name  = var.storage_account_name
  app_insights_name     = var.app_insights_name
  workspace_name        = var.workspace_name
  resource_group_name   = data.azurerm_resource_group.rg.name
  location              = data.azurerm_resource_group.rg.location
  mail_address          = var.email_address
  vault_uri             = data.azurerm_key_vault.kv.vault_uri

  azure_dns = {
    subscription_id = data.azurerm_client_config.current.subscription_id
  }
}

resource "azurerm_key_vault_access_policy" "kv_access" {
  key_vault_id = data.azurerm_key_vault.kv.id

  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = module.keyvault_acmebot.principal_id

  certificate_permissions = [
    "Get",
    "List",
    "Create",
    "Update"
  ]
}

resource "azurerm_role_assignment" "dns_iam" {
  scope                = data.azurerm_subscription.current.id
  role_definition_name = "DNS Zone Contributor"
  principal_id         = data.azurerm_windows_function_app.func.identity.0.principal_id
}
