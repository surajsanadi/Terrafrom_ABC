# Resource 1 – First file
resource "local_file" "fileone" {
  filename = "fileone.txt"
  content  = "Hello from Terraform"
}

# Resource 2 – Second file
resource "local_file" "filetwo" {
  filename = "filetwo.txt"
  content  = "This is the second file"
}

# Resource 3 – A string variable (Terraform internal)
variable "mystring" {
  default = "Terraform is working!"
}

