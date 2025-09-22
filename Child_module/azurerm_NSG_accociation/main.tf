resource "azurerm_network_interface_security_group_association" "nsg_association" {
  for_each = var.network_interface_security_group_association

  network_interface_id      = data.azurerm_network_interface.nic[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg[each.key].id
}
