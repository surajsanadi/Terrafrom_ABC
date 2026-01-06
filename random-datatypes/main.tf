variable minmax {
    type=object({
        min=number
        max=number
    })

}

resource "random_integer" "sample" {
    min = var.minmax.min
    max = var.minmax.max
}

output "result" {
    value = random_integer.sample.result
}




# variable "minmax" {
#   type    = tuple([number, number])
#   default = [2, 4]   
# }


# resource "random_integer" "sample" {
#     min = var.minmax[0]
#     max = var.minmax[1]
# }

# output "result" {
#     value = random_integer.sample.result
# }





# variable minmax {
#     type=map(number)
#     default = {min=2
#            max=5}
# }

# resource "random_integer" "sample" {
#     min = var.minmax.min
#     max = var.minmax.max
# }

# output "result" {
#     value = random_integer.sample.result
# }



# variable max {
#     type=set(number)
# }

# variable min {
#     type=set(number)
# }


# resource "random_integer" "sample" {
#     max=tolist(var.max) [2]
#     min=tolist(var.min) [2]
# }

# output "result" {
#     value=random_integer.sample.result
# }

# output "min_output" {
#     value=var.min
# }

# output "max_output" {
#     value=var.max
# }


# variable list1 {
#     type=list(number)
# }

# resource "random_shuffle" "sample" {
#     input=var.list1
# }

# output "result" {
#     value=random_shuffle.sample.input
# }


# variable length1 {
#     type=number
# }

# variable enable_random {
#     type=bool
# }

# resource "random_bytes" "sample" {
#     length=var.length1
# }

# output "result" {
#     value=var.enable_random ? random_bytes.sample.base64 : "disable"
#     sensitive=true

# }



# variable length {
#     type=number
# }

# resource "random_id" "sample" {
#     byte_length=var.length
# }

# output "result" {
#     value=random_id.sample.id
# }



# variable prefix {
#     type=string
# } 


# resource "random_pet" "sample" {
#     prefix=var.prefix
# }

# output "result" {
#     value=random_pet.sample.id
# }
