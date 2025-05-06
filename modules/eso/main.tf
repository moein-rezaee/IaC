resource "helm_release" "external_secrets" {
  name       = "external-secrets"
  namespace  = var.namespace
  repository = "https://charts.external-secrets.io"
  chart      = "external-secrets"
  version    = var.chart_version

  create_namespace = true

  values = [
    yamlencode({
      installCRDs = true
    })
  ]
}
