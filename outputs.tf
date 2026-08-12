# --- azurerm_vmware_private_cloud ---
output "vmware_private_clouds_id" {
  description = "Map of id values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_id
}

output "vmware_private_clouds_circuit" {
  description = "Map of circuit values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_circuit
}

output "vmware_private_clouds_hcx_cloud_manager_endpoint" {
  description = "Map of hcx_cloud_manager_endpoint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_hcx_cloud_manager_endpoint
}

output "vmware_private_clouds_internet_connection_enabled" {
  description = "Map of internet_connection_enabled values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_internet_connection_enabled
}

output "vmware_private_clouds_location" {
  description = "Map of location values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_location
}

output "vmware_private_clouds_management_cluster" {
  description = "Map of management_cluster values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_management_cluster
}

output "vmware_private_clouds_management_subnet_cidr" {
  description = "Map of management_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_management_subnet_cidr
}

output "vmware_private_clouds_name" {
  description = "Map of name values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_name
}

output "vmware_private_clouds_network_subnet_cidr" {
  description = "Map of network_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_network_subnet_cidr
}

output "vmware_private_clouds_nsxt_certificate_thumbprint" {
  description = "Map of nsxt_certificate_thumbprint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_nsxt_certificate_thumbprint
}

output "vmware_private_clouds_nsxt_manager_endpoint" {
  description = "Map of nsxt_manager_endpoint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_nsxt_manager_endpoint
}

output "vmware_private_clouds_nsxt_password" {
  description = "Map of nsxt_password values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_nsxt_password
  sensitive   = true
}

output "vmware_private_clouds_provisioning_subnet_cidr" {
  description = "Map of provisioning_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_provisioning_subnet_cidr
}

output "vmware_private_clouds_resource_group_name" {
  description = "Map of resource_group_name values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_resource_group_name
}

output "vmware_private_clouds_sku_name" {
  description = "Map of sku_name values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_sku_name
}

output "vmware_private_clouds_tags" {
  description = "Map of tags values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_tags
}

output "vmware_private_clouds_vcenter_certificate_thumbprint" {
  description = "Map of vcenter_certificate_thumbprint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_vcenter_certificate_thumbprint
}

output "vmware_private_clouds_vcenter_password" {
  description = "Map of vcenter_password values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_vcenter_password
  sensitive   = true
}

output "vmware_private_clouds_vcsa_endpoint" {
  description = "Map of vcsa_endpoint values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_vcsa_endpoint
}

output "vmware_private_clouds_vmotion_subnet_cidr" {
  description = "Map of vmotion_subnet_cidr values across all vmware_private_clouds, keyed the same as var.vmware_private_clouds"
  value       = module.vmware_private_clouds.vmware_private_clouds_vmotion_subnet_cidr
}

# --- azurerm_vmware_express_route_authorization ---
output "vmware_express_route_authorizations_id" {
  description = "Map of id values across all vmware_express_route_authorizations, keyed the same as var.vmware_express_route_authorizations"
  value       = module.vmware_express_route_authorizations.vmware_express_route_authorizations_id
}

output "vmware_express_route_authorizations_express_route_authorization_id" {
  description = "Map of express_route_authorization_id values across all vmware_express_route_authorizations, keyed the same as var.vmware_express_route_authorizations"
  value       = module.vmware_express_route_authorizations.vmware_express_route_authorizations_express_route_authorization_id
}

output "vmware_express_route_authorizations_express_route_authorization_key" {
  description = "Map of express_route_authorization_key values across all vmware_express_route_authorizations, keyed the same as var.vmware_express_route_authorizations"
  value       = module.vmware_express_route_authorizations.vmware_express_route_authorizations_express_route_authorization_key
  sensitive   = true
}

output "vmware_express_route_authorizations_name" {
  description = "Map of name values across all vmware_express_route_authorizations, keyed the same as var.vmware_express_route_authorizations"
  value       = module.vmware_express_route_authorizations.vmware_express_route_authorizations_name
}

output "vmware_express_route_authorizations_private_cloud_id" {
  description = "Map of private_cloud_id values across all vmware_express_route_authorizations, keyed the same as var.vmware_express_route_authorizations"
  value       = module.vmware_express_route_authorizations.vmware_express_route_authorizations_private_cloud_id
}


