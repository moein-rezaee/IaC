
output "secret_full_path" {
  value = "${var.mount_path}/${var.secret_name}"
}

output "secret_name" {
  value = var.secret_name
}

output "policy_name" {
  value = vault_policy.this[0].name
}

output "role_name" {
  value = vault_kubernetes_auth_backend_role.this[0].role_name
}
