resource "kubernetes_secret" "this" {
  metadata {
    name        = var.name
    namespace   = var.namespace
    labels      = var.labels
    annotations = var.annotations
  }

  type = var.type
  data = var.data
}

resource "local_file" "secret_files" {
  for_each = var.enable_file_output ? var.data : {}

  content  = base64decode(each.value)
  filename = "${var.output_dir}/${each.key}"

  depends_on = [kubernetes_secret.this]
}
