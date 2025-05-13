module "vault_rbac" {
  source = "../../../modules/vault_cluster_role_binding"

  cluster_role_binding_name = "vault-tokenreview-binding"
  
  service_accounts = [
    {
      name      = module.service_account_vault.name 
      namespace = module.service_account_vault.namespace
    }
  ]

  depends_on = [ module.service_account_vault ]
}