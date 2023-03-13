variable "ec2_region" {
  type = string
  description = "Specify the region to create the resources"
}

variable "ec2_instance_type" {
  type = string
  description = "Specify the instance type to launch the instance"
}

variable "image_id_keys" {
  description = "Specify the AMIs keys to launch the instance"
}

variable "image_id_values" {
  description = "Specify the AMIs values to launch the instances"
}
