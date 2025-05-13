module "external_secret_redis" {
  source = "../../../modules/eso_sync"

  name                = "redis-credentials"
  namespace           = module.namespace_redis.name
  target_secret_name  = "redis-secret" 
  secret_key          = "password"
  vault_property      = "password"
  vault_secret_path   = module.vault_secret_redis.full_secret_path

  depends_on = [module.namespace_redis, module.vault_secret_redis]  
}
