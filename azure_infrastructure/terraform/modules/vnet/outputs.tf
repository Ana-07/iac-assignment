
output "virtual_network_name" {
  value       = azurerm_virtual_network.vnet.name  
  description = "The name of the virtual network."
}

output "virtual_network_id" {
  value       = azurerm_virtual_network.vnet.id  
  description = "The id of the virtual network"
}

output "subnet1_id" {
  value       = azurerm_subnet.subnet1.id  
  description = "The subnet1 ID of the virtual network."
}

output "subnet1_address_prefix" {
  value       = azurerm_subnet.subnet1.address_prefixes  
  description = "The subnet1 address prefix of the virtual network."
}

output "subnet2_id" {
  value       = azurerm_subnet.subnet2.id  
  description = "The subnet2 ID of the virtual network."
}

output "subnet2_address_prefix" {
  value       = azurerm_subnet.subnet2.address_prefixes  
  description = "The subnet2 address prefix of the virtual network."
}

output "subnet3_id" {
  value       = azurerm_subnet.subnet3.id
  description = "The subnet3 id of the virtual network."
}

output "subnet3_address_prefix" {
  value       = azurerm_subnet.subnet3.address_prefixes
  description = "The subnet3 address prefix of the virtual network."
}

output "subnet4_id" {
  value       = azurerm_subnet.subnet4.id
  description = "The subnet4 id of the virtual network."
}

output "subnet4_address_prefix" {
  value       = azurerm_subnet.subnet4.address_prefixes
  description = "The subnet4 address prefix of the virtual network."
}

