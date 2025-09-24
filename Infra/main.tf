resource "azurerm_resource_group" "rg_amitesh" {
  name     = "dev-rg"
  location = "Central india"
}

resource "azurerm_storage_account" "storage_amitesh" {
  name                     = "storageaccountamitesh"
  resource_group_name      = azurerm_resource_group.rg_amitesh.name
  location                 = azurerm_resource_group.rg_amitesh.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}