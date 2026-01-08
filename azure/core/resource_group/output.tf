output "name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.resource_group.name
}

output "id" {
  description = "Resource Group Id"
  value       = azurerm_resource_group.resource_group.id
}
