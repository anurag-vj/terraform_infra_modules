output "resource_group_ids" {
  description = "resource groups details"
  value = {
    name     = azurerm_resource_group.resource_group.name
    location = azurerm_resource_group.resource_group.location
    id       = azurerm_resource_group.resource_group.id
  }
}
