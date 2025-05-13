# modules/vault-auth-rbac/main.tf

resource "kubernetes_cluster_role_binding" "vault_token_review" {
  metadata {
    name = var.cluster_role_binding_name
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "system:auth-delegator"
  }

  dynamic "subject" {
    for_each = var.service_accounts
    content {
      kind      = "ServiceAccount"
      name      = subject.value.name
      namespace = subject.value.namespace
    }
  }
}