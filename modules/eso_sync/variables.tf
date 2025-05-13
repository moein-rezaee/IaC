variable "name" {}
variable "namespace" {}
variable "secret_store_name" {
  default = "vault-store"
}
variable "secret_store_kind" {
  default = "ClusterSecretStore"
}
variable "target_secret_name" {}
variable "secret_key" {}
variable "vault_secret_path" {}
variable "vault_property" {}
variable "refresh_interval" {
  default = "1h"
}
