# Resource Group
variable "rg_name" {
  type    = string
  default = "bc-prd-website-rg01"
}

variable "dns_rg_name" {
  type    = string
  default = "bctech-prod-dns-rg01"
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

# Function App
variable "function_app_name" {
  type    = string
  default = "bc-prd-website-func01"
}

variable "app_service_plan_name" {
  type    = string
  default = "bc-prd-website-asp01"
}

variable "storage_account_name" {
  type    = string
  default = "bcprdwebsitesa02"
}

variable "app_insights_name" {
  type    = string
  default = "bc-prd-website-appi01"
}

variable "workspace_name" {
  type    = string
  default = "bc-prd-website-log01"
}

variable "email_address" {
  type    = string
  default = "admin@bctech.me"
}
