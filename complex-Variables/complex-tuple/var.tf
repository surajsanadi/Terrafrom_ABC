variable "content" {
  type    = any
  default = "common content"
}


variable "filename11" {
type = tuple([string,number,list(number)])
default = ["dghsvd",1132,[1,2.3,5]]
}

