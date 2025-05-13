output "external_secret_name" {
  description = "نام ExternalSecret ایجاد شده"
  value       = kubernetes_manifest.external_secret.manifest.metadata.name
}

output "target_secret_name" {
  description = "نام Kubernetes Secret هدف که ایجاد خواهد شد"
  value       = var.target_secret_name
}

output "namespace" {
  description = "Namespaceای که منابع در آن ایجاد شده‌اند"
  value       = var.namespace
}

output "secret_key" {
  description = "کلید اصلی در Secret که از Vault خوانده شده"
  value       = var.secret_key
}

output "vault_secret_path" {
  description = "مسیر کامل secret در Vault"
  value       = var.vault_secret_path
}

output "vault_property" {
  description = "خاصیت خوانده شده از secret در Vault"
  value       = var.vault_property
}

output "full_secret_reference" {
  description = "مرجع کامل برای دسترسی به secret"
  value       = {
    namespace = var.namespace
    name      = var.target_secret_name
    key       = var.secret_key
  }
}