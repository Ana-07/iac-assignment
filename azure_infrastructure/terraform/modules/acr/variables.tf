
variable "resource_group_name" {
  default       = "rg"
  type          = string
  description   = "Name of the resource group."  
}

variable "resource_group_location" {
  default       = "eastus2"
  type          = string
  description   = "Location of the resource group."  
}

variable "acr_sku" {
  default     = "Premium"
  type        = string
}

variable "acr_admin_enabled" {
  default     = true
  type        = bool
  description = "Enabled the Admin User"  
}

variable "acr_name" {
  default     = "containerregistry01"
  type        = string
  description = "The name of the ACR."  
}

