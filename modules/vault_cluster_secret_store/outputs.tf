# output "vault_cluster_secret_store_name" {
#   value = kubernetes_manifest.vault_cluster_secret_store.metadata[0].name
#   description = "The name of the created ClusterSecretStore"
# }


output "vault_cluster_secret_store_manifest" {
  value = kubernetes_manifest.vault_cluster_secret_store
}
