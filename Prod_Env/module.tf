module "east_prod_rg01" {
  source = "../Infra_Modules/ResourceGroup"
  rg_name = "prod-rg100"
  rg_location = "westus"
  tags = {
    "env" = "prod"
    "owner" = "batch12"
  }
}


module "east_rg02" {
  source = "../Infra_Modules/ResourceGroup"
  rg_name = "prod-rg200"
  rg_location = "westus"
  tags = {
    "env" = "prod"
    "owner" = "batch12"
  }
}