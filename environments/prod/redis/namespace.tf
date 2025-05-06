module "namespace_redis" {
  source = "../../../modules/namespace"

  name = "redis"
  labels = {
    "app"         = "redis"
    "environment" = "prod"
  }
}