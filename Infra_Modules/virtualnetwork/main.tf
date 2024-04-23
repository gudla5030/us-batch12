data "azurerm_resource_group" "rg" {
  name = var.vnet_rg_name
}
## Creating virtual Network
resource "azurerm_virtual_network" "vnet01" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "private_subnet01" {
  name                 = var.private_subnet01
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet01.name
  address_prefixes = var.private_address_prefixes
  #enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

resource "azurerm_subnet" "prublic_subnet01" {
  name                 = var.public_subnet01
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet01.name
  address_prefixes = var.public_address_prefixes
  #enforce_private_link_endpoint_network_policies = true
}

resource "azurerm_subnet" "db_subnet01" {
  name                 = var.db_subnet01
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet01.name
  address_prefixes = var.db_address_prefixes
  #enforce_private_link_endpoint_network_policies = true
}


### Updated some code in Main Branch
