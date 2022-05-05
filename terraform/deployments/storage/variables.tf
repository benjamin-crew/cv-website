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

variable "sa_tags" {
  type = map(any)
  default = {
    owner = "Benjamin Crew"
    usage = "Storage account to host a static website."
  }
}