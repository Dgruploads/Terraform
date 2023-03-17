provider "aws" {
  region  = var.ec2_region
}

provider "aws" {
  alias  = "Oregon"
  region = "us-ewest-2"
}
