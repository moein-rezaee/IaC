module "vault_sa_secret" {
  source    = "../../../modules/secret"
  name      = "vault-sa-token"
  namespace = "kube-system"
  type      = "kubernetes.io/service-account-token"
  annotations = {
    "kubernetes.io/service-account.name" = module.vault_sa.service_account_name
  }
  data = {}
  depends_on         = [module.vault_sa]
}
