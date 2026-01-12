
#BASIC SYNTAX

# # Provider
# terraform {
#   required_providers {
#     local = {
#       source  = "hashicorp/local"
#       version = "2.6.1"
#     }
#   }
# }

# # Input variable
# variable "filename" {
#   type    = string
#   default = "hello.txt"
# }

# # Local variable
# locals {
#   content = "Welcome to Terraform!"
# }

# # # Resource
# resource "local_file" "file1" {
#   filename = var.filename
#   content  = local.content
# }

# # # Output variable
# output "output_print" {
#   value = local_file.file1.id
# }


#BASIC SYNTAX

# terraform {
#   required_providers {
#     local = {

#       source  = "hashicorp/local"
#       version = "2.6.1"

#     }
#   }
# }

# variable "var1" {

#   type    = string
#   default = " file.txt"
# }

# resource "local_file" "res" {
#   filename = var.var1
#   content   = "hello good morning"
# }


# output "op1" {
#   value = local_file.res.id
# }


#PRIMITIVE DATATYPE VARIABLE

# terraform {
#   required_providers {
#     local = {
#       source  = "hashicorp/local"
#       version = "2.6.1"
#     }
#   }
# }


#STRING
# variable "filename" {
#   type    = string
#   default = "string.txt"
# }

# variable "content" {
#   type    = string
#   default = "Terraform is awesome"
# }

# resource "local_file" "string_file" {
#   filename = var.filename
#   content  = var.content
# }


#NUMBER

# variable "filename" {
#   type    = string
#   default = "number.txt"
# }

# variable "content" {
#   type    = number
#   default = 100
# }

# resource "local_file" "number_file" {
#   filename = var.filename
#   content  = tostring(var.content)
# }

#BOOLEAN

# variable "filename" {
#   type    = string
#   default = "bool.txt"
# }

# variable "content" {
#   type    = bool
#   default = true
# }

# resource "local_file" "bool_file" {
#   filename = var.filename
#   content  = tostring(var.content)
# }



#COMPLEX DATATYPE VARIABLE

#LIST Of STRING

# terraform {
#   required_providers {
#     local = {
#       source  = "hashicorp/local"
#       version = "2.6.1"
#     }
#   }
# }
# variable "var1" {
#   type    = string
#   default = "hello.txt"
# }
# variable "content2" {
#   type    = list(string)
#   default = ["suraj", "suri", "shivu"]
# }
# resource "local_file" "test3" {
#   filename = var.var1
#   content  = var.content2[0]
# }
# output "print" {
#   value = local_file.test3.id
# }


#LIST of NUMBER

# terraform {
#   required_providers {
#     local = {
#       source  = "hashicorp/local"
#       version = "2.6.1"
#     }
#   }
# }
# variable "var1" {
#   type    = string
#   default = "hello.txt"
# }
# variable "content2" {
#   type    = list(number)
#   default = [10, 20, 30]
# }
# resource "local_file" "test3" {
#   filename = var.var1
#   content  = tostring(var.content2[0])
# }
# output "print" {
#   value = local_file.test3.id
# }

#LIST of BOOL

# terraform {
#   required_providers {
#     local = {
#       source  = "hashicorp/local"
#       version = "2.6.1"
#     }
#   }
# }
# variable "var1" {
#   type    = string
#   default = "hello.txt"
# }
# variable "content2" {
#   type    = list(bool)
#   default = [true, false, true]
# }
# resource "local_file" "test3" {
#   filename = var.var1
#   content  = tostring(var.content2[0])
# }
# output "print" {
#   value = local_file.test3.id
# }

#LIST(LIST(STRING))

# terraform {
#   required_providers {
#     local = {
#       source  = "hashicorp/local"
#       version = "2.6.1"
#     }
#   }
# }
# variable "var1" {
#   type    = string
#   default = "hello.txt"
# }
# variable "content2" {
#   type = list(list(string))
#   default = [
#     ["suraj", "suri", "shivu"],
#     ["dev", "test", "prod"],
#     ["east", "west", "central"]
#   ]
# }
# resource "local_file" "test3" {
#   filename = var.var1
#   content  = var.content2[0][1]
# }
# output "print" {
#   value = local_file.test3.id
# }

#SET(string)

# terraform {
#   required_providers {
#     local = {
#       source  = "hashicorp/local"
#       version = "2.6.1"
#     }
#   }
# }
# variable "var1" {
#   type    = string
#   default = "hello.txt"
# }
# variable "content1" {
#   type    = set(string)
#   default = ["suraj", "suri", "shivu", "suri"] # duplicate removed
# }
# resource "local_file" "test3" {
#   filename = var.var1
#   content  = tolist(var.content1)[0]
# }
# output "print" {
#   value = local_file.test3.id
# }

#Map(string)


# terraform {
#   required_providers {
#     local = {
#       source  = "hashicorp/local"
#       version = "2.6.1"
#     }
#   }
# }
# variable "var1" {
#   type    = string
#   default = "hello.txt"
# }
# variable "content2" {
#   type = map(string)
#   default = {
#     name1 = "suraj"
#     name2 = "suri"
#     name3 = "shivu"
#   }
# }
# resource "local_file" "test3" {
#   filename = var.var1
#   content  = var.content2["name1"]
# }
# output "print" {
#   value = local_file.test3.id
# }


#TUPLE
# terraform {
#   required_providers {
#     local = {
#       source  = "hashicorp/local"
#       version = "2.6.1"
#     }
#   }
# }
# variable "var1" {
#   type    = string
#   default = "hello.txt"
# }
# variable "content2" {
#   type    = tuple([string, string, string])
#   default = ["suraj", "suri", "shivu"]
# }
# resource "local_file" "test3" {
#   filename = var.var1
#   content  = var.content2[0]
# }
# output "print" {
#   value = local_file.test3.id
# }

#OBJECT

# terraform {
#   required_providers {
#     local = {
#       source  = "hashicorp/local"
#       version = "2.6.1"
#     }
#   }
# }
# variable "var1" {
#   type    = string
#   default = "hello.txt"
# }
# variable "content2" {
#   type = object({
#     name1 = string
#     name2 = string
#     name3 = string
#   })
#   default = {
#     name1 = "suraj"
#     name2 = "suri"
#     name3 = "shivu"
#   }
# }
# resource "local_file" "test3" {
#   filename = var.var1
#   content  = var.content2.name1
# }
# output "print" {
#   value = local_file.test3.id
# }



