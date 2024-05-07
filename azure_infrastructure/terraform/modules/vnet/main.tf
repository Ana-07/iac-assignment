
resource "azurerm_network_security_group" "sg" {
  name                = var.network_security_group
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
  dns_servers         = var.vnet_dns_servers

  tags = {
    environment = var.vnet_env_tag
  }
}


resource "azurerm_subnet" "subnet1" {
  name                 = var.virtual_network_subnet1_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.vnet_subnet1_address_prefix

  private_link_service_network_policies_enabled = false
  private_endpoint_network_policies_enabled     = false
 
}

resource "azurerm_subnet" "subnet2" {
    name                 = var.virtual_network_subnet2_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = var.vnet_subnet2_address_prefix
  }

resource "azurerm_subnet" "subnet3" {
    name                 = var.virtual_network_subnet3_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = var.vnet_subnet3_address_prefix
  }

resource "azurerm_subnet" "subnet4" {
    name                 = var.virtual_network_subnet4_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = var.vnet_subnet4_address_prefix
  }

#--------------------------------------------
# Public IP resources for Azure NAT Gateway
#--------------------------------------------
resource "azurerm_public_ip_prefix" "ng-public-ip-prefix" {
  name                = var.ng_public_ip_prefix_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  prefix_length       = 29

  tags = {
    environment = var.vnet_env_tag
  }
}

resource "azurerm_public_ip" "ng-public-ip" {
  name                = var.ng_public_ip_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = {
    environment = var.vnet_env_tag
  }
}

#--------------------------------------------
# Azure NAT Gateway configuration
#--------------------------------------------
resource "azurerm_nat_gateway" "ng" {
  name                    = var.ng_name
  resource_group_name     = var.resource_group_name
  location                = var.resource_group_location
  idle_timeout_in_minutes = 4
  sku_name                = "Standard"

  tags = {
    environment = var.vnet_env_tag
  }
}

#-----------------------------------------------------
# Association between a Nat Gateway and a Public IP.
#-----------------------------------------------------
resource "azurerm_nat_gateway_public_ip_association" "ng_pubip_assoc" {
  nat_gateway_id       = azurerm_nat_gateway.ng.id
  public_ip_address_id = azurerm_public_ip.ng-public-ip.id
}

#-----------------------------------------------------------
# Association between a Nat Gateway and a Public IP Prefix.
#-----------------------------------------------------------
resource "azurerm_nat_gateway_public_ip_prefix_association" "ng_pubip_prefix_assoc" {
  nat_gateway_id      = azurerm_nat_gateway.ng.id
  public_ip_prefix_id = azurerm_public_ip_prefix.ng-public-ip-prefix.id
}

#-------------------------------------------------------------------
# Associates a NAT Gateway with a Subnet within a Virtual Network.
#-------------------------------------------------------------------
resource "azurerm_subnet_nat_gateway_association" "ng_subnet_assoc" {
  nat_gateway_id = azurerm_nat_gateway.ng.id
  subnet_id      = azurerm_subnet.subnet1.id
}

