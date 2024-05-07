
output "public_dns_zone_name" {
  value       = azurerm_dns_zone.dns_public.name  
  description = "The Public DNS Name."
}

