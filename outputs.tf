output "subnet_network_security_group_associations_id" {
  description = "Map of id values across all subnet_network_security_group_associations, keyed the same as var.subnet_network_security_group_associations"
  value       = { for k, v in azurerm_subnet_network_security_group_association.subnet_network_security_group_associations : k => v.id }
}
output "subnet_network_security_group_associations_network_security_group_id" {
  description = "Map of network_security_group_id values across all subnet_network_security_group_associations, keyed the same as var.subnet_network_security_group_associations"
  value       = { for k, v in azurerm_subnet_network_security_group_association.subnet_network_security_group_associations : k => v.network_security_group_id }
}
output "subnet_network_security_group_associations_subnet_id" {
  description = "Map of subnet_id values across all subnet_network_security_group_associations, keyed the same as var.subnet_network_security_group_associations"
  value       = { for k, v in azurerm_subnet_network_security_group_association.subnet_network_security_group_associations : k => v.subnet_id }
}

