resource "azurerm_key_vault" "key" {
    for_each = var.key_vault
  name                        = each.value.name
  location                    = each.value.location
  resource_group_name         = each.value.resource_group_name
  tenant_id                   = data.azurerm_client_config.tenant.tenant_id
  sku_name                    = "standard"

  soft_delete_retention_days  = 7
  purge_protection_enabled    = true

  access_policy {
    tenant_id = data.azurerm_client_config.tenant.tenant_id
    object_id = data.azurerm_client_config.object.object_id

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Purge",
    ]
  }
}
