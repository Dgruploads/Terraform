variable "ec2_instance_type" {
  type = string
  description = "Instance type to use when launching the instance"
}

variable "ec2_image" {
  type = string
  description = "AMI to use when launching the instance"
}

variable "ec2_region" {
  type = string
  description = "Region to create the resoures"
}
