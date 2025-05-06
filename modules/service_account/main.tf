resource "kubernetes_service_account" "this" {
  metadata {
    name        = var.name
    namespace   = var.namespace
    labels      = var.labels
    annotations = var.annotations
  }

  automount_service_account_token = var.automount
}