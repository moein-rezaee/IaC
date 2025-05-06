variable "namespace" {
  type        = string
  default     = "external-secrets"
  description = "Namespace for ESO"
}

variable "chart_version" {
  type        = string
  default     = "0.9.19" # نسخه‌ای که خوب کار می‌کنه با Vault
  description = "Chart version of ESO"
}
