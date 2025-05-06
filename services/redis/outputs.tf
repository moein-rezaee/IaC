output "redis_release_name" {
  description = "Helm release name of Redis"
  value       = helm_release.redis.name
}
