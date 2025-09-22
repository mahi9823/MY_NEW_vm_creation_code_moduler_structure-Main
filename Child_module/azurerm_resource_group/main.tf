resource "azurerm_resource_group" "app_rg" {
    for_each = var.resource_group
    name     = each.value.name
    location = each.value.location


lifecycle {
    prevent_destroy = true
  }
}

