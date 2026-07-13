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
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

