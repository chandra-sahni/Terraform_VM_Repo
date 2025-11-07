resource "azurerm_subnet" "subnets" {
  name = "frontend-subnet"
  resource_group_name = "rg-pillu-dev-todoapp-01"
  virtual_network_name = "vnet-pillu-dev-todoapp-01"
}