
variable "role_name" {
  description = "Name of the Vault Role"
  type        = string
}

variable "bound_service_account_names" {
  description = "List of service account names bound to this role"
  type        = list(string)
}

variable "bound_service_account_namespaces" {
  description = "List of namespaces bound to this role"
  type        = list(string)
}

variable "token_policies" {
  description = "List of token policies for this role"
  type        = list(string)
}

variable "token_ttl" {
  description = "TTL for the token issued by this role"
  type        = string
}
