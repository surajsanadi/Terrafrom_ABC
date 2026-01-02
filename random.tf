
    resource "random_integer" "demo" {
  min = 10
  max = 99
}

output "random_value" {
  value = random_integer.demo.result
}
