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

variable a1 {
default = "var content a1"
}
variable a2 {
default = "a2"
}
variable a3 {
default = "var content a3"
}
variable a4 {
default = "var content a4"
}
variable a5 {
}

output "oa1" {
  value = var.a1
}
output "oa2" {
  value = var.a2
}
output "oa3" {
  value = var.a3
}
output "oa4" {
  value = var.a4
}
output "oa5" {
  value = var.a5
}


