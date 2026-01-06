variable "content" {
  type    = any
  default = "this is the object complex datatype"
}


variable "filename12" {
type = object({
	name = string
	id = number
	address = list(string)
})
default = {
	name = "suraj"
	id = 4808
	address = ["Bhagyanagar","Belagavi",]
}
}

