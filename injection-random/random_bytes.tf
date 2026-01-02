variable "byte_length" {
  type    = number
  default = 8
}


resource "random_bytes" "rb" {
  length = var.byte_length
}

output "random_bytes_value" {
  value = random_bytes.rb.hex
  sensitive = true
}

