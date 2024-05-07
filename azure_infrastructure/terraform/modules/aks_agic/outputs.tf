
output "aks_name" {
  value = azurerm_kubernetes_cluster.kube_cluster.name
  description = "The Name of the AKS."
}

output "client_key" {
  value = azurerm_kubernetes_cluster.kube_cluster.kube_config[0].client_key
  description = "The Client Key for AKS."
  
  sensitive = true
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.kube_cluster.kube_config.0.client_certificate
  description = "The Client Certificate for AKS."

  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.kube_cluster.kube_config_raw
  description = "The Kube Config for AKS."

  sensitive = true
}


