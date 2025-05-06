module "vault_cluster_secret_store" {
  source = "../../../modules/cluster_secret_store"

  name                   = "vault-backend"  # نام دلخواه برای ClusterSecretStore
  vault_server_url       = "http://vault.default.svc.cluster.local:8200"  # آدرس Vault
  vault_secret_path      = "secret"  # مسیر Vault که سکرت‌ها ذخیره می‌شوند
  vault_version          = "v2"  # نسخه Vault
  vault_role             = "vault-role"  # نقش Vault
  vault_service_account  = "vault-auth-sa"  # سرویس‌اکانت مربوط به Vault
}

output "cluster_secret_store_name" {
  value = module.vault_cluster_secret_store.cluster_secret_store_name
}
