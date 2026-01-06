data local_file readfile {
		filename = "/mnt/e/Terraform/Terraform_ABC/file1.txt"
		}
		 
		output or1 {
		value = data.local_file.readfile.content
		}
