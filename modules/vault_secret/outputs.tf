output "name" {
  description = "The name of the created Vault secret"
  value       = vault_kv_secret_v2.this[0].name
}

output "full_secret_path" {
  value = "${var.mount_path}/data/${var.secret_name}"
}