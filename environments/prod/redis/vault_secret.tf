module "vault_secret_redis" {
  source = "../../../modules/vault_secret"

  enable      = true
  mount_path  = "secret"
  secret_name = "redis"
  secret_data = {
    password = "2486ee92-3a84-4c29-a739-3e799bf5d7ce"
  }
}