variable "enable" {
  description = "Flag to enable or disable the Vault KV engine setup"
  type        = bool
  default     = true
}

variable "path" {
  description = "Path where the KV engine will be mounted in Vault"
  type        = string
}

variable "description" {
  description = "Description for the KV secret engine"
  type        = string
  default     = ""
}

variable "vault_address" {
  description = "Vault server address"
  type        = string
}

variable "vault_token" {
  description = "Vault authentication token"
  type        = string
}
