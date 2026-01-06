variable "content" {
  type    = any
  default = "common content"
}

variable "filename8" {
  type= map
	default = {
		name="adi"
		phnum=45612315
		isactive=true
	}
}
variable "filename9" {
type= map(list(any))
default = {
	name=["adi","karthik"]
	phnum=[45612315,23564]
	isactive=[true, false]
}
}

variable filename10 {
type= map(string)
default = {
name="adi"
phnum="45612315"
isactive="yes"
}
}
