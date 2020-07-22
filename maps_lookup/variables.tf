variable "name" {
	description = "Name for the resources to be created"
	type        = string
	default     = "Terraform-resources"
}

variable "region" {
	description = "Region to launch the instance"
	type        = string
	default     = "us-east-1"
}

variable "instance_count" {
	description = "Number of instance to launch"
	type        = number
	default     = 2
}

variable "instance_type" {
	description = "List the instance type for the instance"
	type        = string
	default     = "t2.micro"
}

variable "image_id_os" {
	description = "List the instance AMI"
	type        = map
	default     = {
            "Amazon"           = "ami-0b898040803850657"
            "Red_hat"          = "ami-098f16afa9edf40be"
            "Ubuntu"           = "ami-0ac80df6eff0e70b5"
            "Windows"          = "ami-0f38562b9d4de0dfe"
       }
}

variable "key_name" {
	description = "Specify the key pair to be used for the instance"
	type        = string
	default     = "linux-server-ubuntu"
}
