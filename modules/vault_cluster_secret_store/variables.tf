# modules/vault_cluster_secret_store/variables.tf
variable "name" {
  description = "نام ClusterSecretStore"
  type        = string
  default     = "vault-store"
}

variable "vault_server_url" {
  description = "آدرس سرور Vault (مثال: https://vault.example.com:8200)"
  type        = string
}

variable "vault_secret_path" {
  description = "مسیر پیش‌فرض secret engine در Vault (مثال: secret)"
  type        = string
  default     = "secret"
}

variable "vault_k8s_role" {
  description = "نقش Kubernetes در Vault (همان role ایجادشده در مرحله vault write auth/kubernetes/role)"
  type        = string
}

variable "vault_service_account_name" {
  description = "نام سرویس اکانت در کوبرنتیس (مثال: external-secrets-sa)"
  type        = string
}

variable "vault_service_account_namespace" {
  description = "نام‌فضای سرویس اکانت (مثال: external-secrets)"
  type        = string
}

variable "vault_auth_mount_path" {
  description = "مسیر mount احراز هویت Kubernetes در Vault (مثال: kubernetes)"
  type        = string
  default     = "kubernetes"
}