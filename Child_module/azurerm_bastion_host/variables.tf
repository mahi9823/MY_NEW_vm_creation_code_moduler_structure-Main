variable "bastion_host" {
  description = "A map of bastion host configurations."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    virtual_network_name = string
    subnet_name           = string
    public_ip_name        = string
    
  }))
  
}