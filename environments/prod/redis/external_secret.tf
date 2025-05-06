module "external_secret_redis" {
  source = "../../../modules/eso_sync"

  namespace           = module.namespace_redis.name
  name                = "external-secret-redis"
  target_secret_name  = module.vault_secret_manager_redis.secret_name
  secret_key          = "password"
  vault_property      = "password"
  vault_secret_path   = module.vault_secret_manager_redis.secret_full_path

  depends_on = [module.vault_secret_manager_redis]
}
