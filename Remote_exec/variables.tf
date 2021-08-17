variable "RegionName" {
  type    = string
  default = "us-east-1"
}

variable "InstanceType" {
  type    = string
  default = "t2.micro"
}

variable "ImageAmi" {
  type    = string
  default = "ami-0c2b8ca1dad447f8a"
}

variable "InstanceCount" {
  type    = string
  default = 1
}

variable "key_name" {
        description = "Specify the key pair to be used for the instance"
        type        = string
        default     = "linux-server-mac"
}
