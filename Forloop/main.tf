locals {
    filename_upper = [ for key,value in var.filenamemap : upper(key) ]
    filename_upper_list = [ for value in var.filenamelist : ceil(value) ]
    map_upper = { for key,value in var.filenamemap : upper(key) => lower(value) }
}

variable filenamemap {
    type = map(string)
    default = {
        name = "a"
        name2 = "b"
    }
}

variable filenamelist {
    type = list(number)
    default = [1234,4567,6789,112.65,100.65,20.87] 
    
}


resource local_file f1 {
    count = length(local.filename_upper)
    filename = local.filename_upper[count.index]
    content = "test"
}

output mapupper {
    value = local.map_upper
}

output fsum{
    value = sum(var.filenamelist)
}

output "ceil_values" {
  value = local.filename_upper_list
}

