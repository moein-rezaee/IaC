variable "release_name" {
  description = "نام release Helm"
  type        = string
  default     = "redis"
}

variable "namespace" {
  description = "Namespace برای نصب Redis"
  type        = string
}

variable "existing_secret_name" {
  description = "نام secret موجود که توسط external_secret_redis ایجاد شده"
  type        = string
  default     = "redis-secret"
}

variable "chart_version" {
  description = "نسخه Helm chart"
  type        = string
  default     = "17.11.3" # آخرین نسخه را بررسی کنید
}

variable "architecture" {
  description = "معماری Redis (standalone|replication|cluster)"
  type        = string
  default     = "standalone"
}

variable "persistence_enabled" {
  description = "فعال‌سازی ذخیره‌سازی دائم"
  type        = bool
  default     = true
}

variable "storage_class" {
  description = "نام storage class برای persistence"
  type        = string
  default     = "standard"
}

variable "memory_limit" {
  description = "محدودیت حافظه"
  type        = string
  default     = "256Mi"
}

variable "cpu_limit" {
  description = "محدودیت CPU"
  type        = string
  default     = "100m"
}

variable "install_timeout" {
  description = "زمان‌دهی نصب (ثانیه)"
  type        = number
  default     = 600
}

variable "extra_settings" {
  description = "تنظیمات اضافی برای Helm chart"
  type        = map(string) # تغییر به map از string
  default     = {}
}