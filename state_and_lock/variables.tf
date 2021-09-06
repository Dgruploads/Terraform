variable "region" {
	description = "Specify the region for the resources"
	type   = string
	default = "us-east-1"
}

variable "image_id" {
	description = "Specify the AMI ID"
	type   = string
	default = "ami-087c17d1fe0178315"
}

variable "instance_type" {
	description = "Specify the instance type"
	type   = string
	default = "t2.micro"
}
