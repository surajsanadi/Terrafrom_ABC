variable "content" {
  type    = any
  default = "common content"
}

variable "filename1" {
  default = "gsgsdbdhusi"
  type    = string
}

variable "filename2" {
  default = false
  type    = bool
}
variable "filename3" {
  default = 123
  type    = number
}
variable "filename4" {
  default = "123"
  type    = number
}
variable "filename5" {
  default = ["123", "fgvd", true]
  type    = list(any)
}

