module "service_account_redis" {
  source    = "../../../modules/service_account"
  name      = "redis-sa"
  namespace = module.namespace_redis.name
  labels = {
    app = "redis"
  }
  annotations = {}

  depends_on = [module.namespace_redis]
}
