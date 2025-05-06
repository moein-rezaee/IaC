variable "name" {
  type = string
}

variable "namespace" {
  type = string
}

variable "labels" {
  type    = map(string)
  default = {}
}

variable "annotations" {
  type    = map(string)
  default = {}
}

variable "automount" {
  type    = bool
  default = true
}