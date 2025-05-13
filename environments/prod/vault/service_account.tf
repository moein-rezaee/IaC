module "service_account_vault" {
  source    = "../../../modules/service_account"
  name      = "vault-sa"
  namespace = "external-secrets"
  labels    = { app = "vault" }

  annotations = {
    "kubernetes.io/service-account.name" = "vault-sa"
    "kubernetes.io/enforce-mountable-secrets" = "true"
  }
}