module "installer_redis" {
  source = "../../../services/redis"

  name                 = "redis"
  chart_version        = "20.13.4"
  namespace            = module.namespace_redis.name
  existing_secret_name = module.vault_secret_manager_redis.secret_name
  service_account_name = module.service_account_redis.service_account_name

  depends_on = [module.service_account_redis, module.vault_secret_manager_redis]
}
