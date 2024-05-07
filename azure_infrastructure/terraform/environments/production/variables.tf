################### SP Details

variable "sp_client_id" {
}
variable "sp_tenant_id" {
}
variable "sp_subscription_id" {
}
variable "sp_client_secret" {
}

#################### RG

variable "resource_group_name" {
}
variable "resource_group_location" {
}

################ TAGS

variable "tags_env_name" {
}

###################### VNET

variable "virtual_network" {
}
variable "virtual_network_subnet1_name" {
}
variable "virtual_network_subnet2_name" {
}
variable "virtual_network_subnet3_name" {
}
variable "virtual_network_subnet4_name" {
}
variable "vnet_subnet1_address_prefix" {
}
variable "vnet_subnet2_address_prefix" {
}
variable "vnet_subnet3_address_prefix" {
}
variable "vnet_subnet4_address_prefix" {
}
variable "vnet_address_space" {
}
variable "vnet_env_tag" {
}
variable "network_security_group" {
}
variable "ng_public_ip_name" {
}
variable "ng_public_ip_prefix_name" {
}
variable "ng_name" {
}


################ Private DNS

variable "private_dns_zone" {
}
variable "dns_virtual_network_link" {
}

################# Public DNS

variable "public_dns_name" {
}

####################### ACR

variable "acr_sku" {
}
variable "acr_admin_enabled" {
}
variable "acr_name" {
}


############### AKS with AGIC

variable "kube_cluster_name" {
}
variable "dns_prefix" {
}
variable "kubernetes_version" {
}
variable "node_pool_size" {
}
variable "node_pool_name" {
}
variable "node_pool_count" {
}
variable "public_ip_name" {
}
variable "default_node_pool_min_count" {
}
variable "default_node_pool_max_count" {
}

