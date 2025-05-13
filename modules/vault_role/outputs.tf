output "name" {
  description = "The name of the created Vault role"
  value       = vault_kubernetes_auth_backend_role.this.role_name
}
