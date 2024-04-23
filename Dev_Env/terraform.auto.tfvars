  vnet_rg_name  = "dev-rg100"
  vnet_name     = "dev-east-vnet01"
  address_space = ["172.16.0.0/16"]
  private_subnet01 = "private-subnet01"
  private_address_prefixes = ["172.16.1.0/24"]
  enforce_private_link_endpoint_network_policies = "false"
  public_subnet01 = "public-subnet01"
  public_address_prefixes = ["172.16.2.0/24"]
  db_subnet01 = "db-subnet01"
  db_address_prefixes = ["172.16.3.0/24"]

 sa_rg_name = "Test-RG01"
 sa_name = "batch1988"
 account_tier = "Standard"
 account_replication_type = "LRS"
 tags = {
  owner = "Batch12"
  BAU   = "IT"
 }