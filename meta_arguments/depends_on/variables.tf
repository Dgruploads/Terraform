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

variable "db_engine" {
  description = "Specify the database engine"
  type        = string
}

variable "db_instance_type" {
  description = "Specify the instance type for database"
  type        = string
}

variable "db_storage" {
  description = "Specify the storage for the database"
  type        = number
}

variable "db_name" {
  description = "Specify the name for the database"
  type        = string
}

variable "db_username" {
  description = "Specify the username for the database"
  type        = string
}

variable "db_password" {
  description = "Specify the password for the database"
  type        = string
}

variable "skip_snapshot" {
  description = "Specify if to skip snapshot creation"
  type        = bool
}

variable "s3_bucket_name" {
  description = "Specify the name of the bucket to create"
  type        = string
}
