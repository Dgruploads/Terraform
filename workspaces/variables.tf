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

variable "image_id" {
  description = "List the instance AMI"
  type        = string
  default     = "ami-0b898040803850657"
}

variable "key_name" {
  description = "Specify the key pair to be used for the instance"
  type        = string
  default     = "linux-server-ubuntu"
}
