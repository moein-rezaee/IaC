variable "namespace" {
  type    = string
  default = "vault"
}

variable "chart_version" {
  type    = string
  default = "0.27.0" # نسخه stable vault helm chart
}
