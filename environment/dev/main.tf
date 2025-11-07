###############################################
# Virtual Network with Dynamic Subnets
###############################################
resource "azurerm_virtual_network" "vnets" {
  for_each = var.networks

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space

  # 👇 Dynamic block for multiple subnets
  dynamic "subnet" {
    for_each = each.value.subnets
    content {
      name           = subnet.value.name
      address_prefixes = subnet.value.address_prefix
    }
  }
}

###############################################
# Public IP Address Resource
###############################################
resource "azurerm_public_ip" "public_ips" {
  for_each = var.public_ips

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method

  # Optional defaults (since not in tfvars)
  sku           = "Standard"
  ip_version    = "IPv4"

  tags = each.value.tags
}
