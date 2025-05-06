resource "helm_release" "vault_injector" {
  name       = "vault-injector"
  namespace  = var.namespace
  repository = "https://helm.releases.hashicorp.com"
  chart      = "vault"
  version    = var.chart_version

  values = [
    yamlencode({
      "injector" = {
        "enabled" = true
      },
      "server" = {
        "enabled" = false
      },
      "global" = {
        "tlsDisable" = true
      }
    })
  ]
}
