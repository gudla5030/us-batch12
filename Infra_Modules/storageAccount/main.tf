data "azurerm_resource_group" "sa_rg" {
  name = var.sa_rg_name
}
resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name
  resource_group_name      = data.azurerm_resource_group.sa_rg.name
  location                 = data.azurerm_resource_group.sa_rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = var.tags
}