linux_virtual_machine = {
  "vm1" = {
    name                = "frontend-nic"
    location            = "Japan West"
    resource_group_name = "app-resource-group-1"
    size                = "Standard_B2s"
    nic_key            = "interface_1"
    
  }

  "vm2" = {
    name                =  "backend-nic"
    location            = "Japan West"
    resource_group_name = "app-resource-group-1"
    size                = "Standard_B2s"
    nic_key            = "interface_2"
    
  }
}

