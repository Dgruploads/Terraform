variable "ec2_instance_type" {
  type = string
  description = "Instance type to use when launching the instance"
}

variable "ec2_ami" {
  type = string
  description = "AMI to use when launching the instance"
}

variable "ec2_key_name" {
  type = string
  description = "Key pair to attach to the ec2 instance"
}
