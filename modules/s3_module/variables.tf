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

variable "ec2_vpc_id" {
  type = string
  description = "VPC to create the resources"
}

variable "s3_bucket_name" {
  type = string
  description = "Name of the S3 bucket to create"
}
