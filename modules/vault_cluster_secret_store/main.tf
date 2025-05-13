resource "kubernetes_manifest" "vault_cluster_secret_store" {
  manifest = {
    apiVersion = "external-secrets.io/v1beta1"
    kind       = "ClusterSecretStore"
    metadata = {
      name = var.name
    }
    spec = {
      provider = {
        vault = {
          server  = var.vault_server_url
          path    = var.vault_secret_path
          version = "v2"
          # تغییر در ساختار auth
          auth = {
            kubernetes = { # حذف method و استفاده مستقیم از kubernetes
              mountPath = var.vault_auth_mount_path
              role      = var.vault_k8s_role
              serviceAccountRef = {
                name      = var.vault_service_account_name
                namespace = var.vault_service_account_namespace
              }
            }
          }
        }
      }
    }
  }
}
