
variable "mount_path" {
  description = "Vault mount path"
  type        = string
}

variable "secret_name" {
  description = "Name of the secret"
  type        = string
}

variable "secret_data" {
  description = "Data to store in the secret"
  type        = map(any)
}

variable "enable" {
  description = "Whether to enable secret creation"
  type        = bool
  default     = true
}
