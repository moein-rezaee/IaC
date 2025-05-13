# modules/vault-auth-rbac/variables.tf

variable "cluster_role_binding_name" {
  description = "Name of the ClusterRoleBinding"
  type        = string
  default     = "vault-tokenreview-binding"
}

variable "service_accounts" {
  description = "List of service accounts to bind"
  type = list(object({
    name      = string
    namespace = string
  }))
  default = []
}