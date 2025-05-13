data "kubernetes_secret" "vault_sa" {
  metadata {
    name      = var.vault_sa_secret_name
    namespace = var.vault_sa_namespace
  }
}
