resource "local_file" "f8" {
  filename = var.filename8.phnum
  content  = var.content
}

resource "local_file" "f9" {
  filename = var.filename9.phnum[1]
  content  = var.content
}

resource "local_file" "f10" {
  filename = var.filename10.name
  content  = var.content
}
