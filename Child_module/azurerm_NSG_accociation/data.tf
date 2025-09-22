data "azurerm_network_interface" "nic" {
  for_each            = var.network_interface_security_group_association
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}



data "azurerm_network_security_group" "nsg" {
  for_each            = var.network_interface_security_group_association
  name                = each.value.nsg_name
  resource_group_name = each.value.rg_name
}