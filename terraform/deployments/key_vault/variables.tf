# Resource Group
variable "rg_name" {
  type    = string
  default = "bc-prd-website-rg01"
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
