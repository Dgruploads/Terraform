variable "ec2_key_name" {
  description = "Key name to use when launching the instance"
  type        = string
}

variable  "ec2_instance_type" {
  description = "Instance type to use when launching the instance"
  type        = string
}

variable "ec2_ami" {
  description = "AMI to use when launching the instance"
  type        = string
}

variable "ec2_region" {
  description = "Specify the region to create the resources"
  type        = string
}
