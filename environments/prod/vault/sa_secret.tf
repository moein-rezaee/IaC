module "vault_sa_secret" {
  source    = "../../../modules/secret"
  name      = "vault-sa-token"
  namespace = "external-secrets"
  type      = "kubernetes.io/service-account-token"
  annotations = {
    "kubernetes.io/service-account.name" = module.service_account_vault.name
  }
  data = {}
  depends_on         = [module.service_account_vault]
}
