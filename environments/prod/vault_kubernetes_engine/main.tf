# locals {
#   kubernetes_ca_cert = file("${path.module}/ca.crt")
#   token_reviewer_jwt = file("${path.module}/token.jwt")
# }

# module "vault_kubernetes_engine" {
#   source = "../../../modules/vault_kubernetes_engine"

#   enable                       = true
#   kubernetes_auth_backend_path = "kubernetes"
#   kubernetes_ca_cert           = local.kubernetes_ca_cert
#   token_reviewer_jwt           = local.token_reviewer_jwt

#   kubernetes_host = var.kubernetes_host
#   vault_address   = var.vault_address
#   vault_token     = var.vault_token
# }


module "vault_kubernetes_auth" {
  source = "../../../modules/vault_kubernetes_engine"

  vault_sa_secret_name = "vault-sa-token"
  vault_sa_namespace   = "external-secrets"
}

