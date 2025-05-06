resource "vault_kv_secret_v2" "this" {
  count = var.enable ? 1 : 0

  mount     = var.mount_path
  name      = var.secret_name
  data_json = jsonencode(var.secret_data)
}

resource "vault_policy" "this" {
  count = var.enable ? 1 : 0

  name   = var.policy_name
  policy = <<EOT
path "${var.mount_path}/data/${var.secret_name}" {
  capabilities = ["read"]
}
EOT
}

resource "vault_kubernetes_auth_backend_role" "this" {
  count                            = var.enable ? 1 : 0
  backend                          = var.kubernetes_auth_backend_path
  role_name                        = var.role_name
  bound_service_account_names      = var.bound_service_account_names
  bound_service_account_namespaces = var.bound_service_account_namespaces
  token_ttl                        = var.token_ttl
  token_policies                   = var.policies
}
