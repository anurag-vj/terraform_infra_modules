resource "azurerm_resource_gorup" "resource_group" {
  name     = var.name
  location = var.location
  tags     = var.tags
}
