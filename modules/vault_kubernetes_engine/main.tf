provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
  path = var.kubernetes_auth_backend_path
}

resource "vault_kubernetes_auth_backend_config" "this" {
  count = var.enable ? 1 : 0

  backend                = var.kubernetes_auth_backend_path
  kubernetes_host        = var.kubernetes_host
  kubernetes_ca_cert     = var.kubernetes_ca_cert
  token_reviewer_jwt     = var.token_reviewer_jwt

  depends_on = [vault_auth_backend.kubernetes]
}