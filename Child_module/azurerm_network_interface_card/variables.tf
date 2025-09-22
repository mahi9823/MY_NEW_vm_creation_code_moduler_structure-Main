variable "network_interface" {
  type = map(object({
    name                 = string
    location             = string
    resource_group_name  = string
    subnet_name          = string
    vnet_name            = string
  }))
}
