resource "azurerm_cdn_profile" "cdn_profile" {
  name                = var.cdn_profile_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = var.cdn_profile_location
  sku                 = "Standard_Microsoft"
}
