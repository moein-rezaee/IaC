module "vault_kv_engine" {
  source       = "../../../modules/vault_kv_engine"
  enable       = true
  path         = "secret" # یا هر مسیری که میخوای مثلا app-secrets
  description  = "KV Engine for storing app secrets"
  vault_address = var.vault_address
  vault_token   = var.vault_token
}
