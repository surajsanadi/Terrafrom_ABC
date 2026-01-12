resource "local_file" "f12" {
  filename = each.value
  for_each = var.filename1
  content  = "aaa"
}

variable "filename1" {
  type    = set(string)
  default = ["abcd.txt", "xyzd.txt"]
}
