variable "aws_region" {
  type    = string
  description = "Region to create the resources"
}

variable "image_id" {
  type = map(any)
  description = "AMIs to use when launching the instances"
}

variable "instance_type" {
  type    = string
  description = "Instance type for the EC2"
}
