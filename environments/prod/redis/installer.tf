module "redis" {
  source = "../../../services/redis"

  namespace           = module.namespace_redis.name
  existing_secret_name = module.external_secret_redis.target_secret_name
  architecture        = "replication" # برای محیط production
  memory_limit        = "512Mi"
  cpu_limit           = "200m"
  
  extra_settings = {
    "replica.replicaCount" = "2"
    "metrics.enabled"     = "true"
  }

  depends_on = [
    module.namespace_redis,
    module.external_secret_redis
  ]
}