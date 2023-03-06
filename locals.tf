provider "aws" {
  region = "us-east-1"
}

locals {
  name         = "App_server"
  project_name = "example_project"
  owner        = "team_name"
}

locals {
  common_tags = {
    Project = local.project_name
    Owner   = local.owner
    Name    = local.name
  }
}

resource "aws_instance" "example_instance" {
  instance_type = "t2.micro"
  ami           = "ami-0557a15b87f6559cf"

  tags          = local.common_tags
}
