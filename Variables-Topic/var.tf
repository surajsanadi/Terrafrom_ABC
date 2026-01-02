locals {
  filename = "abc.txt"
  content  = "this is test from locals"
}

variable "filename" {
  default = "LMN.txt"
}

variable "content" {
 default = "variable content" 
}

output "fid" {
  value = local_file.f1.id
}

