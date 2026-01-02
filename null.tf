
resource "null_resource" "demo" {
  provisioner "local-exec" {
    command = "echo Hello Terraform from Null Provider"
  }
}
