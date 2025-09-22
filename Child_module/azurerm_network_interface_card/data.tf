data "azurerm_subnet" "selected" {
  for_each = var.network_interface
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.resource_group_name
}
