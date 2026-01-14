output "virtual_network_ids" {
  value = {
    name          = azurerm_virtual_network.virtual_network.name
    address_space = azurerm_virtual_network.virtual_network.address_space
    id            = azurerm_virtual_network.virtual_network.id
  }
}

output "subnet_ids" {
  value = {
    for subnet in azurerm_virtual_network.virtual_network.subnet : subnet.name => {
      id               = subnet.id
      address_prefixes = subnet.address_prefixes
    }
  }
}
