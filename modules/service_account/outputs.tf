output "service_account_name" {
  description = "Name of the created ServiceAccount"
  value       = kubernetes_service_account.this.metadata[0].name
}

output "service_account_namespace" {
  description = "Namespace of the created ServiceAccount"
  value       = kubernetes_service_account.this.metadata[0].namespace
}