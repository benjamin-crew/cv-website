# Resource Group
variable "rg_name" {
  type = string
}

# Storage Account
variable "storage_account_name" {
  type = string
}

# Key Vault
variable "kv_name" {
  type = string
}

variable "tenant_id" {
  type = string
}

# Key Vault Access Policy
variable "spn_object_id" {
  type = string
}
variable "cdn_object_id" {
  type = string
}

# CDN Profile
variable "cdn_profile_name" {
  type = string
}

variable "cdn_profile_location" {
  type = string
}

# CDN Endpoint
variable "cdn_endpoint_name" {
  type = string
}

# CDN Endpoint Custom Domain
variable "dns_zone_name" {
  type = string
}

variable "dns_rg_name" {
  type = string
}

variable "dns_cname_name" {
  type = string
}

variable "cert_name" {
  type = string
}