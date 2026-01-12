terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
    local = {
      source = "hashicorp/local"
    }
  }
}

variable "filename" {
  default = "secret.txt"
}

resource "random_bytes" "secret" {
  length = 16
}

resource "local_file" "store" {
  filename = var.filename
  content  = random_bytes.secret.base64
}

output "hex_value" {
  value = random_bytes.secret.base64
  sensitive = true
}

