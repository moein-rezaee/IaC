provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

resource "vault_mount" "this" {
  count = var.enable ? 1 : 0

  path        = var.path
  type        = "kv"
  description = var.description
  options = {
    version = "2"
  }
}
