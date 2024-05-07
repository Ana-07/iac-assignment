################# RG

output "rg_id" {
  value       = module.common.rg_id
}

output "rg_name" {
  value       = module.common.rg_name
}

output "rg_location" {
  value       = module.common.rg_location
}

################## Vnet

output "virtual_network_name" {
  value       = module.vnet.virtual_network_name
}

output "virtual_network_id" {
  value       = module.vnet.virtual_network_id
}

output "subnet1_id" {
  value       = module.vnet.subnet1_id
}

output "subnet1_address_prefix" {
  value       = module.vnet.subnet1_address_prefix
}

output "subnet2_id" {
  value       = module.vnet.subnet2_id
}

output "subnet2_address_prefix" {
  value       = module.vnet.subnet2_address_prefix
}

output "subnet3_id" {
  value       = module.vnet.subnet3_id
}

output "subnet3_address_prefix" {
  value       = module.vnet.subnet3_address_prefix
}

output "subnet4_id" {
  value       = module.vnet.subnet4_id
}

output "subnet4_address_prefix" {
  value       = module.vnet.subnet4_address_prefix
}
############# Private DNS

output "private_dns_zone_name" {
  value       = module.private_dns.private_dns_zone_name
}

################### Public DNS

output "public_dns_zone_name" {
  value       = module.public_dns.public_dns_zone_name
}

################### ACR

output "acr_username" {
  value       = module.acr.acr_username
}


output "acr_password" {
  value       = module.acr.acr_password
  sensitive   = true
}


output "acr_login_server" {
  value       = module.acr.acr_login_server
}


################ AKS with AGIC

output "aks_name" {
  value = module.aks_agic.aks_name
}

output "client_key" {
  value = module.aks_agic.client_key
  sensitive = true
}

output "client_certificate" {
  value = module.aks_agic.client_certificate
  sensitive = true
}

output "kube_config" {
  value = module.aks_agic.kube_config
  sensitive = true
}
