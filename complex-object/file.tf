resource "local_file" "f12" {
  filename = var.filename12.address[0]
  content  = var.content
}

