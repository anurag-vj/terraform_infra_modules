output "network_security_ids" {
  value = {
    name = azurerm_network_security_group.network_security.name
    id   = azurerm_network_security_group.network_security.id
  }
}

output "security_rule_ids" {
  value = {
    for key, value in azurerm_network_security_rule.security_rule : value.name => {
      id = value.id
    }
  }
}
