
resource "azurerm_public_ip" "public_ip" {
  name                = var.public_ip_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"

}

resource "azurerm_kubernetes_cluster" "kube_cluster" {
  name                = var.kube_cluster_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version



  ingress_application_gateway {
    subnet_id         = var.vnet_subnet4_id
    gateway_name      = "ingress-appgateway"
  }

  network_profile {
    network_plugin     = "azure"
    dns_service_ip     = "10.0.0.10"
    service_cidr       = "10.0.0.0/16"
  }

  default_node_pool {
    name                  = var.node_pool_name
    node_count            = var.node_pool_count
    vm_size               = var.node_pool_size
    vnet_subnet_id        = var.vnet_subnet2_id
    orchestrator_version  = var.kubernetes_version
    enable_auto_scaling   = true
    min_count             = var.default_node_pool_min_count
    max_count             = var.default_node_pool_max_count
  }

  identity {
    type = var.identity_type
  }

  tags = {
    environment = var.tags_env_name
  }

  lifecycle {
      ignore_changes = [default_node_pool.0.vm_size,default_node_pool.1.vm_size,default_node_pool.0.node_count,default_node_pool.1.node_count]
  }

}




