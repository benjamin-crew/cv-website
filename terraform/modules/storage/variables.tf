# Resource Group
variable "rg_name" {
  type = string
}

# Storage Account
variable "storage_account_name" {
  type = string
}

variable "sa_tags" {
  type = map(any)
}