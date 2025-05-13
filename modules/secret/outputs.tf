output "name" {
  value = kubernetes_secret.this.metadata[0].name
}

output "data" {
  value = kubernetes_secret.this.data
}
