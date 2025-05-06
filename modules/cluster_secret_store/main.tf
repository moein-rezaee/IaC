resource "kubernetes_manifest" "vault_backend" {
  manifest = {
    apiVersion = "external-secrets.io/v1beta1"
    kind       = "ClusterSecretStore"
    metadata = {
      name = var.name
    }
    spec = {
      provider = {
        vault = {
          server = var.vault_server_url  # آدرس Vault
          path   = var.vault_secret_path  # مسیر ذخیره‌سازی سکرت‌ها در Vault
          version = var.vault_version  # نسخه Vault (معمولاً v2)
          auth = {
            kubernetes = {
              role = var.vault_role  # نقش برای اتصال به Vault
              serviceAccountRef = {
                name = var.vault_service_account  # سرویس‌اکانت مربوط به Vault
              }
            }
          }
        }
      }
    }
  }
}
