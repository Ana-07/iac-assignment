
output "rg_id" {
  value       = azurerm_resource_group.rg.id  
  description = "The Resource Group ID."
}


output "rg_name" {
  value       = azurerm_resource_group.rg.name  
  description = "The Resource Group Name."
}


output "rg_location" {
  value       = azurerm_resource_group.rg.location  
  description = "The Resource Group Location."
}

