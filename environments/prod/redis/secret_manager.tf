module "vault_secret_manager_redis" {
  source = "../../../modules/vault_secret_manager"

  enable = true

  mount_path  = "secret"
  secret_name = "redis-config"
  secret_data = {
    password = "2486ee92-3a84-4c29-a739-3e799bf5d7ce"
  }

  policy_name = "redis-policy"
  role_name   = "redis-role"

  bound_service_account_names      = [module.service_account_redis.service_account_name]
  bound_service_account_namespaces = [module.namespace_redis.name]

  policies = ["redis-policy"]

  depends_on = [module.namespace_redis, module.service_account_redis]
}
