variable "cidr" {
	description = "Specify the cidr block that will be used to create the custom vpc."
	type        = string
	default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
	description = "Specify the tenancy to use when creating the custom vpc."
	type        = string
	default     = "default"
}

variable "enable_dns_hostnames" {
	description = "Specify if you want to enable dns hostnames for the custom vpc."
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Specify if you want to enable dns support for the custom vpc."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Specify the tags for the custom vpc."
  type        = string
  default     = "custom-vpc-terraform"
}

variable "public_subnet_one" {
  description = "Specify the cidr block for the public subnet one."
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_one_tags" {
  description = "Specify the tags for public subnet one."
  type        = string
  default     = "public_subnet_one"
}

variable "public_subnet_two" {
  description = "Specify the cidr block for the public subnet two."
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_subnet_two_tags" {
  description = "Specify the tags for public subnet two."
  type        = string
  default     = "public_subnet_two"
}

variable "private_subnet_one" {
  description = "Specify the cidr block for the private subnet one."
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_one_tags" {
  description = "Specify the tags for private subnet one."
  type        = string
  default     = "private_subnet_one"
}

variable "private_subnet_two" {
  description = "Specify the cidr block for the private subnet two."
  type        = string
  default     = "10.0.4.0/24"
}

variable "private_subnet_two_tags" {
  description = "Specify the tags for private subnet two."
  type        = string
  default     = "private_subnet_two"
} 

variable "custom-vpc-IGW" {
  description = "Specify the name of the custom IGW to be created."
  type        = string
  default     = "Custom-VPC-IGW"
}

variable "public_route_table" {
  description = "Specify the name of the public route table."
  type        = string
  default     = "Custom-vpc-public-route-table"
}

variable "private_route_table" {
  description = "Specify the name of the private route table."
  type        = string
  default     = "Custom-vpc-private-route-table"
}
