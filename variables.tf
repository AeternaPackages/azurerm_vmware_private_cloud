variable "vmware_private_clouds" {
  description = <<EOT
Map of vmware_private_clouds, attributes below
Required:
    - location
    - name
    - network_subnet_cidr
    - resource_group_name
    - sku_name
    - management_cluster (block)
Optional:
    - internet_connection_enabled
    - nsxt_password
    - nsxt_password_key_vault_id (alternative to nsxt_password - read from Key Vault instead)
    - nsxt_password_key_vault_secret_name (alternative to nsxt_password - read from Key Vault instead)
    - tags
    - vcenter_password
    - vcenter_password_key_vault_id (alternative to vcenter_password - read from Key Vault instead)
    - vcenter_password_key_vault_secret_name (alternative to vcenter_password - read from Key Vault instead)
Nested vmware_express_route_authorizations (azurerm_vmware_express_route_authorization):
    Required:
        - name
EOT

  type = map(object({
    location                               = string
    name                                   = string
    network_subnet_cidr                    = string
    resource_group_name                    = string
    sku_name                               = string
    internet_connection_enabled            = optional(bool)
    nsxt_password                          = optional(string)
    nsxt_password_key_vault_id             = optional(string)
    nsxt_password_key_vault_secret_name    = optional(string)
    tags                                   = optional(map(string))
    vcenter_password                       = optional(string)
    vcenter_password_key_vault_id          = optional(string)
    vcenter_password_key_vault_secret_name = optional(string)
    management_cluster = object({
      size = number
    })
    vmware_express_route_authorizations = optional(map(object({
      name = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.vmware_private_clouds) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.vmware_private_clouds : [for kk in keys(coalesce(v0.vmware_express_route_authorizations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
