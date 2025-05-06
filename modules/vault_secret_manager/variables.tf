variable "enable" {
  type    = bool
  default = true
}

variable "kubernetes_auth_backend_path" {
  description = "The mount path of the Kubernetes auth backend in Vault."
  type        = string
  default     = "kubernetes"
}

variable "mount_path" {
  description = "KV Engine mount path (example: secret/)"
  type        = string
}

variable "secret_name" {
  description = "Name of the secret inside Vault"
  type        = string
}

variable "secret_data" {
  description = "Key-value data for the secret"
  type        = map(string)
}

variable "policy_name" {
  description = "Name of the policy to be created"
  type        = string
}

variable "role_name" {
  description = "Name of the Kubernetes auth role"
  type        = string
}

variable "token_ttl" {
  description = "Token ttl"
  type        = number
  default = 3600
}

variable "policies" {
  description = "List of Vault policies to assign to the role"
  type        = list(string)
}

variable "bound_service_account_names" {
  description = "List of allowed service account names"
  type        = list(string)
}

variable "bound_service_account_namespaces" {
  description = "List of allowed namespaces"
  type        = list(string)
}