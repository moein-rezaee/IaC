module "eso" {
  source        = "../../../modules/eso"
  namespace     = "external-secrets"
  chart_version = "0.9.19"
}
