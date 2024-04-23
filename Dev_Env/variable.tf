variable "vnet_rg_name" {
  type = string
  description = "Provide the Virtual Network Resource Group Name"
}

######## Virtual Network Variables
variable "vnet_name" {
  
}
variable "address_space" {
  type = list(string)
}
variable "private_subnet01" {
  
}
variable "private_address_prefixes" {
  type = list(string)
}
variable "enforce_private_link_endpoint_network_policies" {
  type = bool
}

variable "public_subnet01" {
  
}
variable "public_address_prefixes" {
  type = list(string)
}
variable "db_subnet01" {
  
}
variable "db_address_prefixes" {
  type = list(string)
}

########### storage Account variables

variable "sa_rg_name" {
  
}
variable "sa_name" {
  
}
variable "account_tier" {
  
}
variable "account_replication_type" {
  
}
variable "tags" {
  
}