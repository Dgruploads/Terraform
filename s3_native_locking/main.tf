provider "aws" {
  region  = var.region
}

resource "aws_instance" "instance_example" {
  ami           = var.image_id
  instance_type = var.instance_type
}

terraform {
  backend "s3" {
    bucket            = "dgruploads-demo"
    key               = "terraform_state"
    region            = "us-east-1"
   
    # New flag to enable S3 native locking
    use_lockfile = true
  }
}
