module "east_rg01" {
  source      = "../Infra_Modules/ResourceGroup"
  rg_name     = "dev-rg100"
  rg_location = "eastus"
  tags = {
    "env"   = "dev"
    "owner" = "batch12"
  }
}

module "east_rg02" {
  source      = "../Infra_Modules/ResourceGroup"
  rg_name     = "dev-rg200"
  rg_location = "eastus"
  tags = {
    "env"   = "dev"
    "owner" = "batch12"
  }
}

module "east_vnet01" {
  source        = "../Infra_Modules/virtualnetwork"
  vnet_rg_name  = var.vnet_rg_name
  vnet_name     = var.vnet_name
  address_space = var.address_space
  private_subnet01 = var.private_subnet01
  private_address_prefixes = var.private_address_prefixes
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
  public_subnet01 = var.public_subnet01
  public_address_prefixes = var.public_address_prefixes
  db_subnet01 = var.db_subnet01
  db_address_prefixes = var.db_address_prefixes
  depends_on = [ module.east_rg01 ]
}

module "east_sa01" {
  source = "../Infra_Modules/storageAccount"
    sa_rg_name = var.sa_rg_name
    sa_name = var.sa_name
    account_tier = var.account_tier
    account_replication_type = var.account_replication_type
    tags = var.tags
}