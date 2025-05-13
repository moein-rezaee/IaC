provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "vault" {
  address = "http://localhost:8200"
  # address = "http://vault.vault.svc.cluster.local:8200"
  # address = "http://vault-internal.vault.svc.cluster.local:8200"
  token   = ""                       
}
