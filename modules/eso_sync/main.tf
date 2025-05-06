resource "kubernetes_manifest" "external_secret" {
  manifest = {
    apiVersion = "external-secrets.io/v1beta1"
    kind       = "ExternalSecret"
    metadata = {
      name      = var.name
      namespace = var.namespace
    }
    spec = {
      refreshInterval = var.refresh_interval
      secretStoreRef = {
        name = var.secret_store_name
        kind = var.secret_store_kind
      }
      target = {
        name           = var.target_secret_name
        creationPolicy = "Owner"
      }
      data = [
        {
          secretKey = var.secret_key
          remoteRef = {
            key      = var.vault_secret_path
            property = var.vault_property
          }
        }
      ]
    }
  }
}
