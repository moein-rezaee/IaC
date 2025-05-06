output "vault_secret_name" {
  description = "The name of the created Vault secret"
  value       = vault_kv_secret_v2.this[0].name
}
