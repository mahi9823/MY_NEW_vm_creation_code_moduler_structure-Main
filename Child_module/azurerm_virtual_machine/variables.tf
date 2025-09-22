variable "linux_virtual_machine" {
  description = "A map of Linux Virtual Machine configurations."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    size                = string
    nic_key            = string
  }))
  
}

variable "network_interface" {
  description = "A map of Network Interface configurations."
  type = map(object({
    name                = string
    resource_group_name = string
    subnet_name         = string
    vnet_name           = string
    location            = string

  }))
  
}

variable "nic_ids" {
  type = map(string)
}