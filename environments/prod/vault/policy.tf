module "vault_policy" {
  source = "../../../modules/vault_policy"

  policy_name = "vault-policy"
  policy      = <<EOF
path "secret/data/*" {
  capabilities = ["read"]
}
EOF
}