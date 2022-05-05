resource "azurerm_dns_a_record" "a-record" {
  name                = "@"
  zone_name           = data.azurerm_dns_zone.dns_zone.name
  resource_group_name = data.azurerm_dns_zone.dns_zone.resource_group_name
  ttl                 = 60
  target_resource_id  = azurerm_cdn_endpoint.cdn_endpoint.id
}

resource "azurerm_dns_cname_record" "cname-record" {
  name                = var.dns_cname_name
  zone_name           = data.azurerm_dns_zone.dns_zone.name
  resource_group_name = data.azurerm_dns_zone.dns_zone.resource_group_name
  ttl                 = 60
  record              = "${var.dns_cname_name}.${azurerm_cdn_endpoint.cdn_endpoint.fqdn}"
}

resource "azurerm_cdn_endpoint_custom_domain" "cdn_endpoint_custom_domain" {
  name            = "custom-domain"
  cdn_endpoint_id = azurerm_cdn_endpoint.cdn_endpoint.id
  host_name       = "${var.dns_zone_name}"

  user_managed_https {
    key_vault_certificate_id = data.azurerm_key_vault_certificate.cdn-cert.id
    tls_version = "TLS12"
  }

  depends_on = [
    azurerm_dns_a_record.a-record,
    azurerm_dns_cname_record.cname-record
  ]
}
