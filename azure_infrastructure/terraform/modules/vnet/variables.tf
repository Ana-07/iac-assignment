
variable "resource_group_name" {
  description   = "Name of the resource group."
  type          = string
}

variable "resource_group_location" {
  description   = "Location of the resource group."
  type          = string
}

variable "network_security_group" {
  description   = "Name of the security group."
  type          = string
}

variable "virtual_network" {
  description   = "Name of the virtual network being used."
  type          = string
}

variable "virtual_network_subnet1_name" {
  description   = "Name of the virtual network subnet-1 being used."
  type          = string
}

variable "virtual_network_subnet2_name" {
  description   = "Name of the virtual network subnet-2 being used."
  type          = string
}

variable "virtual_network_subnet3_name" {
  description   = "Name of the virtual network subnet-3 being used."
  type          = string
}

variable "virtual_network_subnet4_name" {
  description   = "Name of the virtual network subnet-4 being used."
  type          = string
}

variable "vnet_subnet1_address_prefix" {
  description   = "Address Prefix of subnet-1."
  type          = list
}

variable "vnet_subnet2_address_prefix" {
  description   = "Address Prefix of subnet-2."
  type          = list
}

variable "vnet_subnet3_address_prefix" {
  description   = "Address Prefix of subnet-3."
  type          = list
}

variable "vnet_subnet4_address_prefix" {
  description   = "Address Prefix of subnet-3."
  type          = list
}

variable "vnet_address_space" {
  description   = "The address space used for the Azure Vnet."
  type          = list
}

variable "vnet_dns_servers" {
  default       = []
  description   = "List of DNS servers for the Azure Vnet."
  type          = list
}

variable "vnet_env_tag" {
  description   = "Name of the Env Name for Tags."
  type          = string
}

variable "ng_public_ip_name" {
  description   = "Name of the Public IP for NAT Gateway."
  type          = string
}

variable "ng_public_ip_prefix_name" {
  description   = "Name of the Public IP Prefix for NAT Gateway."
  type          = string
}

variable "ng_name" {
  description   = "Name of the NAT Gateway."
  type          = string
}

