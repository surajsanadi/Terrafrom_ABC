variable "files" {
  type = map(string)
  default = {
    file1 = "Hello from file 1"
    file2 = "Hello from file 2"
  }
}

resource "local_file" "demofile" {
  count = length(keys(var.files))

  filename = "${keys(var.files) [count.index]}.txt"
  content  = values(var.files) [count.index]
}

