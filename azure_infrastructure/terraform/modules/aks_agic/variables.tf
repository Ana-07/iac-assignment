
variable "resource_group_name" {
  default       = "rg"
  description   = "Name of the resource group."
}

variable "resource_group_location" {
  default       = "eastus"
  description   = "Location of the resource group."
}

variable "kube_cluster_name" {
  default     = "aks-01"
  description = "The name for the Kubernetes Cluster in the."
  type        = string
}

variable "dns_prefix" {
  default     = "aks1-dns"
  description = "The prefix for the resources created in the specified Azure Resource Group."
  type        = string
}

variable "kubernetes_version" {
  description = "Specify which Kubernetes release to be used."
  type        = string
}

variable "node_pool_size" {
  default     = "Standard_B2s"
  description = "The default virtual machine size for the Kubernetes agents."
  type        = string
}

variable "node_pool_name" {
  default     = "nodepool01"
  description = "The default Azure AKS agentpool (nodepool) name."
  type        = string
}

variable "node_pool_count" {
  default     = 1
  description = "The number of Agents that should exist in the Agent Pool."
  type        = number
}

variable "identity_type" {
  default     = "SystemAssigned"
  description = "The type of identity used for the managed cluster."
  type        = string
}

variable "virtual_network" {
  default       = "rg01-vnet"
  description   = "Name of the virtual network being used."
  type          = string
}

variable "virtual_network_subnet1_name" {
  default       = "subnet1"
  description   = "Name of the virtual network subnet-1 being used."
  type          = string
}

variable "virtual_network_subnet2_name" {
  default       = "subnet2"
  description   = "Name of the virtual network subnet-2 being used."
  type          = string
}

variable "virtual_network_subnet3_name" {
  default       = "subnet3"
  description   = "Name of the virtual network subnet-3 being used."
  type          = string
}

variable "vnet_subnet1_address_prefix" {
  default       = "10.0.1.0/24"
  description   = "Address Prefix of subnet-1."
  type          = string
}

variable "vnet_subnet2_address_prefix" {
  default       = "10.0.2.0/24"
  description   = "Address Prefix of subnet-2."
  type          = string
}

variable "vnet_subnet3_address_prefix" {
  default       = ["10.0.3.0/24"]
  description   = "Address Prefix of subnet-3."
  type          = list
}

variable "vnet_address_space" {
  default       = ["10.0.0.0/16"]
  description   = "The address space used for the Azure Vnet."
  type          = list
}

variable "vnet_dns_servers" {
  default       = []
  description   = "List of DNS servers for the Azure Vnet."
  type          = list
}

variable "public_ip_name" {
  default       = "public-ip1"
  description   = "Name of the Public IP."
  type          = string
}

variable "vnet_subnet2_id" {
  description   = "The Subnet-2 ID of the VNET."
  type          = string
}

variable "vnet_subnet4_id" {
  description   = "The Subnet-4 ID of the VNET."
  type          = string
}

variable "tags_env_name" {
  description   = "Name of the Env Name for Tags."
  type          = string
}

variable "default_node_pool_min_count" {
  description   = "Aks Node pool autoscale minimum count"
  type          = number
}

variable "default_node_pool_max_count" {
  description   = "Aks Node pool autoscale maximum count"
  type          = number
}