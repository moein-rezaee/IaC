output "vault_kv_path" {
  description = "Mounted KV path in Vault"
  value       = var.enable ? var.path : null
}
