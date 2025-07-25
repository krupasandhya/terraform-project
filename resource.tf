resource "azurerm_resource_group" "terraflow" {
  name     = "terraflow"
  location = "East US"
}
resource "azurerm_storage_account" "storyterra" {
    name                     = "nksstore125"
    resource_group_name      = azurerm_resource_group.terraflow.name
    location                 = azurerm_resource_group.terraflow.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}
resource "azurerm_storage_container" "storycontainer" {
  name                  = "nksblobcontainer"
  storage_account_name  = azurerm_storage_account.storyterra.name
  container_access_type = "private"
}