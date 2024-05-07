
resource "azurerm_private_dns_zone" "dnszone1" {
  name                = var.private_dns_zone
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns_vnet_link" {
  name                  = var.dns_virtual_network_link
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.dnszone1.name
  virtual_network_id    = var.virtual_network_id
}

