variable "enable" {
  description = "Enable or disable the Kubernetes secret engine"
  type        = bool
  default     = true
}

variable "kubernetes_auth_backend_path" {
  description = "Path where the Kubernetes auth backend is mounted (default: kubernetes)"
  type        = string
  default     = "kubernetes"
}

variable "kubernetes_host" {
  description = "The URL of the Kubernetes API server"
  type        = string
}

variable "kubernetes_ca_cert" {
  description = "The PEM-encoded CA cert for the Kubernetes API server"
  type        = string
}

variable "token_reviewer_jwt" {
  description = "The service account JWT token for Vault to authenticate with Kubernetes"
  type        = string
}

variable "vault_address" {
  description = "Vault server address"
  type        = string
}

variable "vault_token" {
  description = "Vault authentication token"
  type        = string
}
