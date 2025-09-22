resource "azurerm_network_interface" "nic" {
  for_each = var.network_interface

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.selected[each.key].id
    private_ip_address_allocation = "Dynamic"
    
  }

  tags = {
    environment = "staging"
  }

  lifecycle {
    prevent_destroy = false
  }
}



