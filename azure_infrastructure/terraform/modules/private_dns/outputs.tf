
output "private_dns_zone_name" {
  value       = azurerm_private_dns_zone.dnszone1.name  
  description = "The Private DNS Name."
}

