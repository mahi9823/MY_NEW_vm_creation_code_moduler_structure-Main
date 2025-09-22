variable "network_interface_security_group_association" {
  type = map(object({
    nic_name = string
    nsg_name = string
    rg_name  = string
  }))
}