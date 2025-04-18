variable "region" {
	description = "Specify the region for the resources"
	type   = string
	default = "ap-south-1"
}

variable "image_id" {
	description = "Specify the AMI ID"
	type   = string
	default = "ami-0d682f26195e9ec0f"
}

variable "instance_type" {
	description = "Specify the instance type"
	type   = string
	default = "t2.micro"
}
