
resource "azurerm_dns_zone" "dns_public" {
  name                = var.public_dns_name
  resource_group_name = var.resource_group_name
}

