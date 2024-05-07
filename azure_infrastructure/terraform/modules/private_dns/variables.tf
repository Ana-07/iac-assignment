variable "resource_group_name" {
  description   = "Name of the resource group."
  type          = string
}

variable "private_dns_zone" { 
  description = "Name of the private dns zone."
}

variable "dns_virtual_network_link" {
  description = "Name of Vnet Link between Vnet and Private DNS."
}

variable "virtual_network_id" {
  description = "ID of Vnet."
}

