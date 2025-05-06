variable "name" {
  description = "Name for the Helm release (مثلا redis)"
  type        = string
}

variable "namespace" {
  description = "Namespace to install Redis into"
  type        = string
}

variable "chart_version" {
  description = "Version of the Redis Helm chart"
  type        = string
}

variable "existing_secret_name" {
  description = "The Kubernetes Secret name which stores Redis password (که Vault Agent Injector ساخته)"
  type        = string
}

variable "secret_password_key" {
  description = "The key inside Secret که پسورد رو نگه میداره (مثلا password)"
  type        = string
  default     = "password"
}

variable "service_account_name" {
  description = "The ServiceAccount name که این پادها باید استفاده کنند"
  type        = string
}