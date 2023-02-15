data "aws_subnet" "existing_subnet" {
  filter {
    name  = "tag:Name"
    values = ["us-east-1c-subnet"]
  }
}

data "aws_security_group" "existing_security_group" {
  filter {
    name  = "tag:Name"
    values = ["terraform_security_group"]
  }
}

data "aws_key_pair" "existing_key_pair" {
  key_name = var.ec2_key_name
}
