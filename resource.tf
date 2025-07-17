resource "azurerm_resource_group" "terraflow" {
  name     = "terraflow"
  location = "East US"
}
resource "azurerm_storage_account" "storageterra" {
    name                     = "sandystorageterra987"
    resource_group_name      = azurerm_resource_group.terraflow.name
    location                 = azurerm_resource_group.terraflow.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}