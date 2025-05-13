output "name" {
  description = "Name of the created ServiceAccount"
  value       = kubernetes_service_account.this.metadata[0].name
}

output "namespace" {
  description = "Namespace of the created ServiceAccount"
  value       = kubernetes_service_account.this.metadata[0].namespace
}