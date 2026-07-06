variable "subnet_network_security_group_associations" {
  description = <<EOT
Map of subnet_network_security_group_associations, attributes below
Required:
    - network_security_group_id
    - subnet_id
EOT

  type = map(object({
    network_security_group_id = string
    subnet_id                 = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_subnet_network_security_group_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: network_security_group_id
  #   source:    [from networksecuritygroups.ValidateNetworkSecurityGroupID] !ok
  # path: network_security_group_id
  #   source:    [from networksecuritygroups.ValidateNetworkSecurityGroupID] err != nil
}

