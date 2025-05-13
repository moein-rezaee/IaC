  
resource "vault_kubernetes_auth_backend_role" "this" {
  role_name                      = var.role_name
  backend                        = "kubernetes"
  bound_service_account_names    = var.bound_service_account_names
  bound_service_account_namespaces = var.bound_service_account_namespaces
  token_policies                 = var.token_policies
  token_ttl                      = var.token_ttl
  audience = var.audience
}
