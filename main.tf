locals {
  vmware_private_clouds = { for k1, v1 in var.vmware_private_clouds : k1 => { internet_connection_enabled = v1.internet_connection_enabled, location = v1.location, management_cluster = v1.management_cluster, name = v1.name, network_subnet_cidr = v1.network_subnet_cidr, nsxt_password = v1.nsxt_password, nsxt_password_key_vault_id = v1.nsxt_password_key_vault_id, nsxt_password_key_vault_secret_name = v1.nsxt_password_key_vault_secret_name, resource_group_name = v1.resource_group_name, sku_name = v1.sku_name, tags = v1.tags, vcenter_password = v1.vcenter_password, vcenter_password_key_vault_id = v1.vcenter_password_key_vault_id, vcenter_password_key_vault_secret_name = v1.vcenter_password_key_vault_secret_name } }

  vmware_express_route_authorizations = merge([
    for k1, v1 in var.vmware_private_clouds : {
      for k2, v2 in coalesce(v1.vmware_express_route_authorizations, {}) :
      "${k1}/${k2}" => merge(v2, {
        private_cloud_id = module.vmware_private_clouds.vmware_private_clouds_id["${k1}"]
      })
    }
  ]...)
}

module "vmware_private_clouds" {
  source                = "git::https://github.com/AeternaModules/azurerm_vmware_private_cloud.git?ref=v5.0.0"
  vmware_private_clouds = local.vmware_private_clouds
}

module "vmware_express_route_authorizations" {
  source                              = "git::https://github.com/AeternaModules/azurerm_vmware_express_route_authorization.git?ref=v5.0.0"
  vmware_express_route_authorizations = local.vmware_express_route_authorizations
  depends_on                          = [module.vmware_private_clouds]
}

