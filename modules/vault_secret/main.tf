
resource "vault_kv_secret_v2" "this" {
  count      = var.enable ? 1 : 0
  mount      = var.mount_path
  name       = var.secret_name
  data_json  = jsonencode(var.secret_data)
}
