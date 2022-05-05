# Resource Group
variable "rg_name" {
  type    = string
  default = "bc-prd-website-rg01"
}

# Storage Account
variable "storage_account_name" {
  type    = string
  default = "bcprdwebsitesa01"
}

# Key Vault
variable "kv_name" {
  type    = string
  default = "bc-prd-website-kv01"
}

variable "tenant_id" {
  type    = string
  default = "3ccdf94d-2f74-44fb-a1f7-4814ebf776e7"
}

# Key Vault Access Policy
variable "spn_object_id" {
  type    = string
  default = "80b6572b-8520-4a12-9553-552140653cf1"
}

variable "cdn_object_id" {
  type    = string
  default = "12035ecc-d241-4462-8855-c45c7b0a4cfb"
}

# CDN Profile
variable "cdn_profile_name" {
  type    = string
  default = "bc-prd-website-cdn01"
}

variable "cdn_profile_location" {
  type    = string
  default = "westeurope"
}


# CDN Endpoint
variable "cdn_endpoint_name" {
  type    = string
  default = "bc-prd-website-cdnend01"
}

# CDN Endpoint Custom Domain
variable "dns_zone_name" {
  type    = string
  default = "bctech.me"
}

variable "dns_rg_name" {
  type    = string
  default = "bctech-prod-dns-rg01"
}

variable "dns_cname_name" {
  type    = string
  default = "cdnverify"
}

variable "cert_name" {
  type = string
  default = "bctech-me"
}
