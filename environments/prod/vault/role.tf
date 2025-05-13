module "vault_role" {
  source = "../../../modules/vault_role"

  role_name                        = "vault-role"
  bound_service_account_names      = [module.service_account_vault.name]
  bound_service_account_namespaces = [module.service_account_vault.namespace]
  token_policies                   = [module.vault_policy.name]
  token_ttl                        = 3600
  depends_on                       = [module.service_account_vault, module.vault_policy]
}
