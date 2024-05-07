############### RG

module "common" {
  source                        = "../../modules/common"
  resource_group_name           = var.resource_group_name
  resource_group_location       = var.resource_group_location
}

################# VNET + NAT GATEWAY

module "vnet" {
  source                       = "../../modules/vnet"
  resource_group_name          = module.common.rg_name
  resource_group_location      = module.common.rg_location
  virtual_network              = var.virtual_network
  virtual_network_subnet1_name = var.virtual_network_subnet1_name
  virtual_network_subnet2_name = var.virtual_network_subnet2_name
  virtual_network_subnet3_name = var.virtual_network_subnet3_name
  virtual_network_subnet4_name = var.virtual_network_subnet4_name
  vnet_subnet1_address_prefix  = var.vnet_subnet1_address_prefix
  vnet_subnet2_address_prefix  = var.vnet_subnet2_address_prefix
  vnet_subnet3_address_prefix  = var.vnet_subnet3_address_prefix
  vnet_subnet4_address_prefix  = var.vnet_subnet4_address_prefix
  vnet_address_space           = var.vnet_address_space
  vnet_env_tag                 = var.vnet_env_tag

  ####

  network_security_group       = var.network_security_group
  ng_public_ip_name            = var.ng_public_ip_name
  ng_public_ip_prefix_name     = var.ng_public_ip_prefix_name
  ng_name                      = var.ng_name

}

############# Private DNS

module "private_dns" {
  source                   = "../../modules/private_dns"
  resource_group_name      = module.common.rg_name
  private_dns_zone         = var.private_dns_zone
  dns_virtual_network_link = var.dns_virtual_network_link
  virtual_network_id       = module.vnet.virtual_network_id
}

############### Public DNS

module "public_dns" {
  source                       = "../../modules/public_dns"
  resource_group_name          = module.common.rg_name
  resource_group_location      = module.common.rg_location
  public_dns_name              = var.public_dns_name
}

################### ACR

module "acr" {
  source                  = "../../modules/acr"
  resource_group_name     = module.common.rg_name
  resource_group_location = module.common.rg_location
  acr_sku                 = var.acr_sku
  acr_admin_enabled       = var.acr_admin_enabled
  acr_name                = var.acr_name
}


#################### AKS with AGIC

module "aks_agic" {
  source                          = "../../modules/aks_agic"
  resource_group_name             = module.common.rg_name
  resource_group_location         = module.common.rg_location
  kube_cluster_name               = var.kube_cluster_name
  dns_prefix                      = var.dns_prefix
  kubernetes_version              = var.kubernetes_version
  node_pool_size                  = var.node_pool_size
  node_pool_name                  = var.node_pool_name
  node_pool_count                 = var.node_pool_count
  public_ip_name                  = var.public_ip_name
  vnet_subnet2_id                 = module.vnet.subnet2_id
  vnet_subnet4_id                 = module.vnet.subnet4_id
  tags_env_name                   = var.tags_env_name
  default_node_pool_min_count     = var.default_node_pool_min_count
  default_node_pool_max_count     = var.default_node_pool_max_count
}


