variable "region" {
  description = "Specify the region for the resources."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Specify the instance ami that you want to use for the instance."
  type        = map
  default     = {
     "us-east-1" = "ami-0c94855ba95c71c99"
     "us-east-2" = "ami-098f16afa9edf40be"
     "us-west-1" = "ami-0ac80df6eff0e70b5"
     "us-west-2" = "ami-0f38562b9d4de0dfe"
  }
}

variable "instance_type" {
  description = "Specify the instance type to be used for the instance."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Specify the key pair to be used for the instance."
  type        = string
  default     = "linux-server-ubuntu"
}

variable "subnet_id" {
  description = "Specify the subnet id for the instance"
  type        = string
  default     = "subnet-04b90adf1b4d8303f"
}

variable "vpc_id" {
  description = "Specify the VPC ID for the security group"
  type        = string
  default     = "vpc-042d6ce02e09eb497"
}
