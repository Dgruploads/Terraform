provider "aws" {
   profile = "default"
   region  = "us-east-1"
}

resource "aws_vpc" "custom-vpc-terraform" {
	cidr_block            = var.cidr
	instance_tenancy      = var.instance_tenancy
	enable_dns_hostnames  = var.enable_dns_hostnames
	enable_dns_support    = var.enable_dns_support

	tags = {
		name = var.tags
	}
}
