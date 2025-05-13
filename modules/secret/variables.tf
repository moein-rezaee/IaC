variable "name" {
  type = string
}

variable "namespace" {
  type = string
}

variable "type" {
  type = string
}

variable "data" {
  type = map(string)
}

variable "labels" {
  type    = map(string)
  default = {}
}

variable "annotations" {
  type    = map(string)
  default = {}
}

variable "enable_file_output" {
  type    = bool
  default = false
}

variable "output_dir" {
  type    = string
  default = ""
}
