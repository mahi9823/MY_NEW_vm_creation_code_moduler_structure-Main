variable "key_vault" {
  description = "A map of key vault configurations."
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
  
}