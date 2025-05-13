output "release_name" {
  description = "نام release Helm"
  value       = helm_release.redis.name
}

output "redis_host" {
  description = "آدرس سرویس Redis"
  value       = "${helm_release.redis.name}-master.${var.namespace}.svc.cluster.local"
}

output "redis_port" {
  description = "پورت سرویس Redis"
  value       = "6379"
}

output "redis_secret_name" {
  description = "نام secret استفاده شده توسط Redis"
  value       = var.existing_secret_name
}