provider "aws" {
  profile = "default"
  region  = var.aws_region
}

resource "aws_instance" "for_each_example" {
  for_each	= var.image_id
  ami           = each.value
  instance_type = var.instance_type
}

resource "aws_vpc" "for_each_vpc" {
for_each = var.vpc_cidr_blocks
cidr_block            = each.value
        instance_tenancy      = var.instance_tenancy
        enable_dns_hostnames  = var.enable_dns_hostnames
        enable_dns_support    = var.enable_dns_support
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "image_id" {
  type = map(any)
  default = {
    image_one   = "ami-087c17d1fe0178315"
    image_two   = "ami-0b0af3577fe5e3532"
    image_three = "ami-09e67e426f25ce0d7"
  }
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "vpc_cidr_blocks" {
  type = map(any)
  default = {
		cidr_block_one = "10.0.0.0/16"
		cidr_block_two = "10.1.0.0/16"
	}
}
