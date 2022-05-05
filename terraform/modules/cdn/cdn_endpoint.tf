resource "azurerm_cdn_endpoint" "cdn_endpoint" {
  name                          = var.cdn_endpoint_name
  profile_name                  = azurerm_cdn_profile.cdn_profile.name
  resource_group_name           = data.azurerm_resource_group.rg.name
  location                      = azurerm_cdn_profile.cdn_profile.location
  origin_host_header            = data.azurerm_storage_account.sa.primary_web_host
  querystring_caching_behaviour = "IgnoreQueryString"

  origin {
    name      = "endpoint-origin"
    host_name = data.azurerm_storage_account.sa.primary_web_host
  }

  delivery_rule {
    name  = "EnforceHTTPS"
    order = "1"

    request_scheme_condition {
      operator     = "Equal"
      match_values = ["HTTP"]
    }

    url_redirect_action {
      redirect_type = "Found"
      protocol      = "Https"
    }
  }
}
