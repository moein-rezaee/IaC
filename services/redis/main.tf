# resource "helm_release" "redis" {
#   name       = var.name
#   namespace  = var.namespace
#   # repository = "https://charts.bitnami.com/bitnami"
#   # chart      = "bitnami/redis"
#   chart = "${path.module}/charts/redis-20.13.4.tgz"
#   version    = var.chart_version

#   values = [
#     yamlencode({
#       architecture = "standalone"
#       auth = {
#         enabled                   = true
#         existingSecret            = var.existing_secret_name
#         existingSecretPasswordKey = var.secret_password_key    
#       }

#       master = {
#         podAnnotations = {} 
#       }

#       global = {
#         serviceAccount = {
#           create = false
#           name   = var.service_account_name
#         }
#       }
#     })
#   ]
# }


resource "helm_release" "redis" {
  name       = var.release_name
  namespace  = var.namespace
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "redis"
  version    = var.chart_version
  timeout    = var.install_timeout

  values = [
    templatefile("${path.module}/values.yaml", {
      existing_secret     = var.existing_secret_name
      architecture       = var.architecture
      persistence_enabled = var.persistence_enabled
      storage_class      = var.storage_class
      memory_limit       = var.memory_limit
      cpu_limit          = var.cpu_limit
    })
  ]

  dynamic "set" {
    for_each = var.extra_settings
    content {
      name  = set.key
      value = set.value
    }
  }
}