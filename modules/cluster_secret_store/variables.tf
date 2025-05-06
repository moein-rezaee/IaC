variable "name" {
  description = "The name of the ClusterSecretStore"
  type        = string
}

variable "vault_server_url" {
  description = "URL of the Vault server"
  type        = string
}

variable "vault_secret_path" {
  description = "Path to the Vault secrets"
  type        = string
  default     = "secret"
}

variable "vault_version" {
  description = "Vault version"
  type        = string
  default     = "v2"
}

variable "vault_role" {
  description = "Vault role for Kubernetes authentication"
  type        = string
}

variable "vault_service_account" {
  description = "The name of the service account for Vault authentication"
  type        = string
}
