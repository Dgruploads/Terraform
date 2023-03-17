variable "ec2_instance_type" {
  description = "specify the instance type for EC2"
  type        = string
}

variable "ec2_image" {
  description = "specify the AMI for EC2"
  type        = string
}

variable "ec2_region" {
  description = "Specify the region for resources"
  type        = string
}
