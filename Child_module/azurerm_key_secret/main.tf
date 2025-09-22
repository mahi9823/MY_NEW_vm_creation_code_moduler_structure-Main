resource "azurerm_key_vault_secret" "vm_username" {
  name         = "username"
  value        = "mahesh"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

resource "azurerm_key_vault_secret" "vm_password" {
  name         = "vm-admin-password"
  value        = "Nokia@123"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}