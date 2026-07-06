output "subnet_network_security_group_associations" {
  description = "All subnet_network_security_group_association resources"
  value       = azurerm_subnet_network_security_group_association.subnet_network_security_group_associations
}
output "subnet_network_security_group_associations_network_security_group_id" {
  description = "List of network_security_group_id values across all subnet_network_security_group_associations"
  value       = [for k, v in azurerm_subnet_network_security_group_association.subnet_network_security_group_associations : v.network_security_group_id]
}
output "subnet_network_security_group_associations_subnet_id" {
  description = "List of subnet_id values across all subnet_network_security_group_associations"
  value       = [for k, v in azurerm_subnet_network_security_group_association.subnet_network_security_group_associations : v.subnet_id]
}

