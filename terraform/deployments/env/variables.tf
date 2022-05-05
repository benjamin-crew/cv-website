# Resource Group
variable "rg_name" {
  type    = string
  default = "bc-prd-website-rg01"
}
variable "location" {
  type    = string
  default = "uksouth"
}

variable "rg_tags" {
  type = map(string)
  default = {
    owner = "Benjamin Crew"
    usage = "Resource Group to store website resources."
  }
}

# Storage Account
variable "tf_storage_account_name" {
  type    = string
  default = "bcprdwebsitetfsa01"
}

variable "tf_sa_tags" {
  type = map(string)
  default = {
    owner = "Benjamin Crew"
    usage = "Storage account to host static website tfstate files."
  }
}