module "vault_sa" {
  source    = "../../../modules/service_account"
  name      = "vault-sa"
  namespace = "kube-system"
  labels    = { app = "vault" }

  annotations = {
    "kubernetes.io/service-account.name" = "vault-sa"
  }
}