resource "helm_release" "redis" {
  name       = var.name
  namespace  = var.namespace
  # repository = "https://charts.bitnami.com/bitnami"
  # chart      = "bitnami/redis"
  chart = "${path.module}/charts/redis-20.13.4.tgz"
  version    = var.chart_version

  values = [
    yamlencode({
      architecture = "standalone"
      auth = {
        enabled                   = true
        existingSecret            = var.existing_secret_name
        existingSecretPasswordKey = var.secret_password_key    
      }

      master = {
        podAnnotations = {} 
      }

      global = {
        serviceAccount = {
          create = false
          name   = var.service_account_name
        }
      }
    })
  ]
}
