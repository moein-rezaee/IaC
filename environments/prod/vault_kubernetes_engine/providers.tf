provider "kubernetes" {
  config_path = "~/.kube/config"
}


provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

