variable "ec2_region" {
  type = string
  description = "Specify the region to create the resources"
}

variable "ec2_instance_type" {
  type = string
  description = "Specify the instance type to launch the instance"
}

variable "image_id" {
  description = "Specify the AMIs to launch the instance"
}
