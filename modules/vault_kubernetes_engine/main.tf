# provider "vault" {
#   address = var.vault_address
#   token   = var.vault_token
# }

# resource "vault_auth_backend" "kubernetes" {
#   type = "kubernetes"
#   path = var.kubernetes_auth_backend_path
# }

# resource "vault_kubernetes_auth_backend_config" "this" {
#   count = var.enable ? 1 : 0

#   backend                = var.kubernetes_auth_backend_path
#   kubernetes_host        = var.kubernetes_host
#   kubernetes_ca_cert     = var.kubernetes_ca_cert
#   token_reviewer_jwt     = var.token_reviewer_jwt

#   depends_on = [vault_auth_backend.kubernetes]
# }


resource "local_file" "ca_crt" {
  content  = data.kubernetes_secret.vault_sa.data["ca.crt"]
  filename = "${path.module}/ca.crt"
}

resource "local_file" "sa_token" {
  content  = data.kubernetes_secret.vault_sa.data["token"]
  filename = "${path.module}/token.jwt"
}

resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
  path = var.auth_path
}

resource "vault_kubernetes_auth_backend_config" "this" {
  backend             = vault_auth_backend.kubernetes.path
  kubernetes_host     = var.kubernetes_host
  kubernetes_ca_cert  = base64decode(data.kubernetes_secret.vault_sa.data["ca.crt"])
  token_reviewer_jwt  = base64decode(data.kubernetes_secret.vault_sa.data["token"])
}