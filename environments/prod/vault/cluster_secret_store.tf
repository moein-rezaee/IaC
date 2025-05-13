module "vault_cluster_secret_store" {
  source = "../../../modules/vault_cluster_secret_store"

  name                            = "vault-store"
  # vault_server_url                = "http://localhost:8200"
  # vault_server_url = "http://vault.vault.svc.cluster.local:8200"
  vault_server_url                = "http://vault-internal.vault.svc.cluster.local:8200"
  vault_k8s_role                  = module.vault_role.name
  vault_service_account_name      = module.service_account_vault.name
  vault_service_account_namespace = module.service_account_vault.namespace

  depends_on = [ module.vault_role, module.service_account_vault ]
}
