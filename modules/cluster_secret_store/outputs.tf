output "cluster_secret_store_name" {
  description = "The name of the created ClusterSecretStore"
  value       = kubernetes_manifest.vault_backend.metadata[0].name
}
