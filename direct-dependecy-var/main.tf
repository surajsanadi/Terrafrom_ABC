resource "local_file" "f1" {
  filename = "inchara"
  content  = local_file.f3.id
}
resource "local_file" "f2" {
  filename = "surendra"
  content  = local_file.f1.id
}

resource "local_file" "f3" {
  filename = "suraj"
  content  = "Good morning"
}
resource "local_file" "f4" {
  filename   = "Chidu"
  content    = "Good afternoon"
  depends_on = [local_file.f3, local_file.f2]
 lifecycle {
  create_before_destroy = true
}

}

resource "local_file" "f5" {
  filename = "abcdsdsdsdhs"
  content  = "aaaaa"
  lifecycle {
    prevent_destroy = true
  }
}







# resource "local_file" "f1" {
#   filename = "abc"
#   content  = "aaa"
# }
# resource "local_file" "f2" {
#   filename = "xyz"
#   content  = local_file.f1.id

# }

# resource "local_file" "f3" {
#   filename = "abcd"
#   content  = "aaa"
# }
# resource "local_file" "f4" {
#   filename   = "xyz2"
#   content    = "shdf"
#   depends_on = [local_file.f3, local_file.f2]

#   lifecycle {
#     create_before_destroy = true
#   }

# }



# resource "local_file" "f1" {
#   filename = "abc"
#   content  = "aaa"
# }
# resource "local_file" "f2" {
#   filename = "xyz"
#   content  = "123"
# }
